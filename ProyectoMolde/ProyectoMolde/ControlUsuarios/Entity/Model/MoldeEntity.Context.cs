﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ControlUsuarios.Entity.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MoldeEntities : DbContext
    {
        public MoldeEntities()
            : base("name=MoldeEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AplicacionesWeb> AplicacionesWeb { get; set; }
        public virtual DbSet<Barrios> Barrios { get; set; }
        public virtual DbSet<ControlAplicacion> ControlAplicacion { get; set; }
        public virtual DbSet<Departamentos> Departamentos { get; set; }
        public virtual DbSet<DocumentosIdentidad> DocumentosIdentidad { get; set; }
        public virtual DbSet<EstadosCivil> EstadosCivil { get; set; }
        public virtual DbSet<Formularios> Formularios { get; set; }
        public virtual DbSet<GruposSanguineo> GruposSanguineo { get; set; }
        public virtual DbSet<Menus> Menus { get; set; }
        public virtual DbSet<Municipios> Municipios { get; set; }
        public virtual DbSet<Operaciones> Operaciones { get; set; }
        public virtual DbSet<OperacionesFormulario> OperacionesFormulario { get; set; }
        public virtual DbSet<Perfiles> Perfiles { get; set; }
        public virtual DbSet<PerfilesOperacionesFormulario> PerfilesOperacionesFormulario { get; set; }
        public virtual DbSet<Personas> Personas { get; set; }
        public virtual DbSet<Sexos> Sexos { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<UsuariosOperacionesFormulario> UsuariosOperacionesFormulario { get; set; }
        public virtual DbSet<OpcionesMaestroAnexos> OpcionesMaestroAnexos { get; set; }
        public virtual DbSet<MaestroAnexos> MaestroAnexos { get; set; }
        public virtual DbSet<ConsecutivosTemporales> ConsecutivosTemporales { get; set; }
        public virtual DbSet<Anexos> Anexos { get; set; }
    }
}
