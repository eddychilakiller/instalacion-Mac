#!/bin/bash

# Crear directorio principal de Workspace
mkdir -p $HOME/Workspace

# Directorios principales según GTD
mkdir -p $HOME/Workspace/Inbox
mkdir -p $HOME/Workspace/Projects
mkdir -p $HOME/Workspace/NextActions
mkdir -p $HOME/Workspace/WaitingFor
mkdir -p $HOME/Workspace/SomedayMaybe
mkdir -p $HOME/Workspace/Reference

# Directorios específicos para tareas personales, familiares y de trabajo
mkdir -p $HOME/Workspace/Projects/Personal
mkdir -p $HOME/Workspace/Projects/Family
mkdir -p $HOME/Workspace/Projects/Work

# Directorios para proyectos personales
mkdir -p $HOME/Workspace/Projects/Personal/Health
mkdir -p $HOME/Workspace/Projects/Personal/Hobbies
mkdir -p $HOME/Workspace/Projects/Personal/Finances

# Directorios para proyectos familiares
mkdir -p $HOME/Workspace/Projects/Family/Events
mkdir -p $HOME/Workspace/Projects/Family/Shopping
mkdir -p $HOME/Workspace/Projects/Family/Travel

# Directorios para proyectos de trabajo
mkdir -p $HOME/Workspace/Projects/Work/Axity
mkdir -p $HOME/Workspace/Projects/Work/Walmart

# Subdirectorios para proyectos de Axity
mkdir -p $HOME/Workspace/Projects/Work/Axity/Reports
mkdir -p $HOME/Workspace/Projects/Work/Axity/Meetings
mkdir -p $HOME/Workspace/Projects/Work/Axity/Development

# Subdirectorios para proyectos de Walmart
mkdir -p $HOME/Workspace/Projects/Work/Walmart/Reports
mkdir -p $HOME/Workspace/Projects/Work/Walmart/Meetings
mkdir -p $HOME/Workspace/Projects/Work/Walmart/Development

# Directorios para Acciones Siguientes (Next Actions)
mkdir -p $HOME/Workspace/NextActions/Personal
mkdir -p $HOME/Workspace/NextActions/Family
mkdir -p $HOME/Workspace/NextActions/Work

# Directorios para "Waiting For"
mkdir -p $HOME/Workspace/WaitingFor/Personal
mkdir -p $HOME/Workspace/WaitingFor/Family
mkdir -p $HOME/Workspace/WaitingFor/Work

# Directorios para "Someday/Maybe"
mkdir -p $HOME/Workspace/SomedayMaybe/Personal
mkdir -p $HOME/Workspace/SomedayMaybe/Family
mkdir -p $HOME/Workspace/SomedayMaybe/Work

# Directorios para Referencia (Reference)
mkdir -p $HOME/Workspace/Reference/Personal
mkdir -p $HOME/Workspace/Reference/Family
mkdir -p $HOME/Workspace/Reference/Work

# Crear un archivo README en cada directorio para explicar su propósito
echo "Este directorio es para tareas, ideas y materiales que requieren acción o revisión inmediata." > $HOME/Workspace/Inbox/README.txt
echo "Este directorio contiene todos los proyectos activos organizados por categorías." > $HOME/Workspace/Projects/README.txt
echo "Este directorio contiene las acciones siguientes organizadas por categoría." > $HOME/Workspace/NextActions/README.txt
echo "Este directorio contiene elementos en espera de otras personas o eventos organizados por categoría." > $HOME/Workspace/WaitingFor/README.txt
echo "Este directorio contiene ideas y proyectos que podrían ser relevantes en el futuro organizados por categoría." > $HOME/Workspace/SomedayMaybe/README.txt
echo "Este directorio contiene materiales de referencia organizados por categoría." > $HOME/Workspace/Reference/README.txt

echo "Estructura de directorios creada exitosamente en $HOME/Workspace"

