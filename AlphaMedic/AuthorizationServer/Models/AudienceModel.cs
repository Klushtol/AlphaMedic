﻿using System.ComponentModel.DataAnnotations;

namespace AuthorizationServer.Models
{
    public class AudienceModel
    {
        [MaxLength(100)]
        [Required]
        public string Name { get; set; }
    }
}