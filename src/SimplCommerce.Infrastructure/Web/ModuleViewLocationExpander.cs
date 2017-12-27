﻿using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc.Razor;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace SimplCommerce.Infrastructure.Web
{
    public class ModuleViewLocationExpander : IViewLocationExpander
    {
        private const string MODULE_KEY = "module";
        private const string THEME_KEY = "theme";

        public IEnumerable<string> ExpandViewLocations(ViewLocationExpanderContext context, IEnumerable<string> viewLocations)
        {
            context.Values.TryGetValue(THEME_KEY, out string theme);
            context.Values.TryGetValue(MODULE_KEY, out string module);

            if (!string.IsNullOrWhiteSpace(theme) && !string.Equals(theme, "Generic", System.StringComparison.InvariantCultureIgnoreCase))
            {
                if (!string.IsNullOrWhiteSpace(module))
                {
                    var moduleViewLocations = new string[]
                    {
                        $"/Themes/{theme}/Modules/{module}/Views/{{1}}/{{0}}.cshtml",
                        $"/Themes/{theme}/Modules/{module}/Views/Shared/{{0}}.cshtml",
                        $"/Modules/{module}/Views/{{1}}/{{0}}.cshtml",
                        $"/Modules/{module}/Views/Shared/{{0}}.cshtml",
                        $"/Themes/{theme}/Views/Shared/{{0}}.cshtml"
                    };

                    viewLocations = moduleViewLocations.Concat(viewLocations);
                }
            }
            else
            {
                if (!string.IsNullOrWhiteSpace(module))
                {
                    var moduleViewLocations = new string[]
                    {
                        $"/Modules/{module}/Views/{{1}}/{{0}}.cshtml",
                        $"/Modules/{module}/Views/Shared/{{0}}.cshtml"
                    };

                    viewLocations = moduleViewLocations.Concat(viewLocations);
                }
            }

            return viewLocations;
        }

        public void PopulateValues(ViewLocationExpanderContext context)
        {
            var controllerName = context.ActionContext.ActionDescriptor.DisplayName;
            if(controllerName == null) // in case of render view to string
            {
                return;
            }

            // Get assembly name
            var moduleName = controllerName.Split('(', ')')[1];
            context.Values[MODULE_KEY] = moduleName;

            context.ActionContext.HttpContext.Request.Cookies.TryGetValue("theme", out string previewingTheme);
            if (!string.IsNullOrWhiteSpace(previewingTheme))
            {
                context.Values[THEME_KEY] = previewingTheme;
            }
            else
            {
                var config = context.ActionContext.HttpContext.RequestServices.GetService<IConfiguration>();
                context.Values[THEME_KEY] = config["Theme"];
            }
        }
    }
}
