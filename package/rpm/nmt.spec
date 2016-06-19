Name:		nmt
Version:	0.1.0
Release:	1
Summary:	nCrux Make Tool
License:	MIT
URL:		http://www.ncrux.com/project/%{name}/
Group:		Development/Tools
Source0:	%{name}-%{version}.tgz	
Packager:	Aditi <aditi@ncrux.com>

%define _rpmdir RPMS

%description
A tool to generate makefiles for a project using ultra simplified input.
It supports building of binaries, static libraries, shared libraries,
kernel modules and another nmt based sub-projects.

%prep:

%build:
make

%install:

%files
%defattr(-,root,root)
/*

%changelog

