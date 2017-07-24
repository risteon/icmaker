# this is for emacs file handling -*- mode: cmake; indent-tabs-mode: nil -*-

# -- BEGIN LICENSE BLOCK ----------------------------------------------
# Copyright (c) 2017, FZI Forschungszentrum Informatik
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# -- END LICENSE BLOCK ------------------------------------------------

#----------------------------------------------------------------------
# \file
#
# \author  Jan Oberlaender <oberlaender@fzi.de>
# \date    2014-08-13
#
# Try to find Ghmm.  Once done, this will define:
#  Ghmm_FOUND:          System has Ghmm
#  Ghmm_INCLUDE_DIRS:   The '-I' preprocessor flags (w/o the '-I')
#  Ghmm_LIBRARY_DIRS:   The paths of the libraries (w/o the '-L')
# Variables defined if pkg-config was employed:
#  Ghmm_DEFINITIONS:    Preprocessor definitions.
#  Ghmm_LIBRARIES:      only the libraries (w/o the '-l')
#  Ghmm_LDFLAGS:        all required linker flags
#  Ghmm_LDFLAGS_OTHER:  all other linker flags
#  Ghmm_CFLAGS:         all required cflags
#  Ghmm_CFLAGS_OTHER:   the other compiler flags
#  Ghmm_VERSION:        version of the module
#  Ghmm_PREFIX:         prefix-directory of the module
#  Ghmm_INCLUDEDIR:     include-dir of the module
#  Ghmm_LIBDIR:         lib-dir of the module
#----------------------------------------------------------------------

include(PrintLibraryStatus)
include(LibFindMacros)

libfind_lib_with_pkg_config(Ghmm ghmm
  HEADERS ghmm/ghmm.h
  LIBRARIES ghmm
  )
