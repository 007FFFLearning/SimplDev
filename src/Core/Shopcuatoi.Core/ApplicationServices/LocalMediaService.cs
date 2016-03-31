﻿using System.IO;
using Shopcuatoi.Core.Domain.Models;
using Shopcuatoi.Infrastructure.Domain.IRepositories;

namespace Shopcuatoi.Core.ApplicationServices
{
    public class LocalMediaService : IMediaService
    {
        private IRepository<Media> mediaRespository;

        public LocalMediaService(IRepository<Media> mediaRespository)
        {
            this.mediaRespository = mediaRespository;
        }

        private const string MediaRootFoler = "UserContents";

        public string GetMediaUrl(Media media)
        {
            if (media != null)
            {
                return $"/{MediaRootFoler}/{media.FileName}";
            }

            return $"/{MediaRootFoler}/default.png";
        }

        public string GetMediaUrl(string fileName)
        {
            return $"/{MediaRootFoler}/{fileName}";
        }

        public string GetThumbnailUrl(Media media)
        {
            return GetMediaUrl(media);
        }

        public void SaveMedia(Stream mediaBinaryStream, string fileName)
        {
            var filePath = Path.Combine(GlobalConfiguration.ApplicationPath, MediaRootFoler, fileName);
            using (var output = new FileStream(filePath, FileMode.Create))
            {
                mediaBinaryStream.CopyTo(output);
            }
        }

        public void DeleteMedia(Media media)
        {
            mediaRespository.Remove(media);
            var filePath = Path.Combine(GlobalConfiguration.ApplicationPath, MediaRootFoler, media.FileName);
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
        }
    }
}