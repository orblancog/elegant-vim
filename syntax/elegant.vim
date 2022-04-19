" Vim syntax file
" Language    :  elegant 
" Maintainer  :  orblancog <orblancog@gmail.com>
" Version     :  0.3
" Last Change :  2022 apr 20

" Usage:
" https://github.com/orblancog/elegant-vim
"
" History
" v0.1 2021dec   first release
" v0.2 2022apr19 test
" v0.3 2022apr20 release

" This file is not part of vim

" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.

" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.

" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.



if exists("b:current_syntax")
	finish
endif

syntax clear
"syntax case ignore
"setlocal ignorecase
setlocal iskeyword=a-z,A-Z,48-57,_,.

syntax region elegantString start=/"/ skip=/\\"/ end=/"/


" Integer with nothing in front
syn match elegantNumber /\<\d\+\>/
" Floating point number with decimal no E or e 
syn match elegantNumber /\<\d\+\.\>/
syn match elegantNumber /\<\.\d\+\>/
syn match elegantNumber /\<\d\+\.\d\+\>/
" Floating point like number with E and no decimal point (+,-)
syn match elegantNumber /\<\d[[:digit:]]*[eE][\-+]\=\d\+\>/
" Floating point like number with E and decimal point (+,-)
syn match elegantNumber /\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>/
syn match elegantNumber /\<\.\d[[:digit:]]*[eE][\-+]\=\d\+\>/
" Floating point like number with E and decimal point (+,-)
syn match elegantNumber /\<\d\+\.\?\d*[eE][\-+]\=\d\+\>/


syntax match elegantComment  /!.*$/
syntax match elegantCommand  /\V&end/
syntax match elegantCommand  /\V&run_setup/
syntax match elegantCommand  /\V&run_control/
syntax match elegantCommand  /\V&alter_elements/
syntax match elegantCommand  /\V&amplification_factors/
syntax match elegantCommand  /\V&analyze_map/
syntax match elegantCommand  /\V&aperture_data/
syntax match elegantCommand  /\V&bunched_beam/
syntax match elegantCommand  /\V&bunched_beam_moments/
syntax match elegantCommand  /\V&change_particle/
syntax match elegantCommand  /\V&change_start/
syntax match elegantCommand  /\V&chaos_map/
syntax match elegantCommand  /\V&chromaticity/
syntax match elegantCommand  /\V&closed_orbit/
syntax match elegantCommand  /\V&correct/
syntax match elegantCommand  /\V&correction_matrix_output/
syntax match elegantCommand  /\V&correct_tunes/
syntax match elegantCommand  /\V&coupled_twiss_output/
syntax match elegantCommand  /\V&divide_elements/
syntax match elegantCommand  /\V&elastic_scattering/
syntax match elegantCommand  /\V&error_element/
syntax match elegantCommand  /\V&error_control/
syntax match elegantCommand  /\V&find_aperture/
syntax match elegantCommand  /\V&floor_coordinates/
syntax match elegantCommand  /\V&frequency_map/
syntax match elegantCommand  /\V&global_settings/
syntax match elegantCommand  /\V&ignore_elements/
syntax match elegantCommand  /\V&inelastic_scattering/
syntax match elegantCommand  /\V&insert_elements/
syntax match elegantCommand  /\V&insert_sceffects/
syntax match elegantCommand  /\V&ion_effects/
syntax match elegantCommand  /\V&linear_chromatic_tracking_setup/
syntax match elegantCommand  /\V&link_control/
syntax match elegantCommand  /\V&link_elements/
syntax match elegantCommand  /\V&load_parameters/
syntax match elegantCommand  /\V&matrix_output/
syntax match elegantCommand  /\V&modulate_elements/
syntax match elegantCommand  /\V&moments_output/
syntax match elegantCommand  /\V&momentum_aperture/
syntax match elegantCommand  /\V&obstruction_data/
syntax match elegantCommand  /\V&optimize/
syntax match elegantCommand  /\V&optimization_covariable/
syntax match elegantCommand  /\V&optimization_setup/
syntax match elegantCommand  /\V&optimization_term/
syntax match elegantCommand  /\V&optimization_variable/
syntax match elegantCommand  /\V&parallel_optimization_setup/
syntax match elegantCommand  /\V&print_dictionary/
syntax match elegantCommand  /\V&ramp_elements/
syntax match elegantCommand  /\V&replace_elements/
syntax match elegantCommand  /\V&rf_setup/
syntax match elegantCommand  /\V&rpn_expression/
syntax match elegantCommand  /\V&rpn_load/
syntax match elegantCommand  /\V&run_control/
syntax match elegantCommand  /\V&run_setup/
syntax match elegantCommand  /\V&sasefel/
syntax match elegantCommand  /\V&save_lattice/
syntax match elegantCommand  /\V&sdds_beam/
syntax match elegantCommand  /\V&semaphores/
syntax match elegantCommand  /\V&set_reference_particle_output/
syntax match elegantCommand  /\V&slice_analysis/
syntax match elegantCommand  /\V&subprocess/
syntax match elegantCommand  /\V&steering_element/
syntax match elegantCommand  /\V&transmute_elements/
syntax match elegantCommand  /\V&touschek_scatter/
syntax match elegantCommand  /\V&tune_footprint/
syntax match elegantCommand  /\V&twiss_analysis/
syntax match elegantCommand  /\V&twiss_output/
syntax match elegantCommand  /\V&track/
syntax match elegantCommand  /\V&tune_shift_with_amplitude/
syntax match elegantCommand  /\V&vary_element/ 




syntax keyword elegantName      alph
syntax keyword elegantName      apcontour
syntax keyword elegantName      beambeam
syntax keyword elegantName      bggexp
syntax keyword elegantName      bmapxy
syntax keyword elegantName      bmxyz
syntax keyword elegantName      boffaxe
syntax keyword elegantName      branch
syntax keyword elegantName      brat
syntax keyword elegantName      bumper
syntax keyword elegantName      ccbend
syntax keyword elegantName      center
syntax keyword elegantName      cepl
syntax keyword elegantName      charge
syntax keyword elegantName      ckicker
syntax keyword elegantName      clean
syntax keyword elegantName      corgpipe
syntax keyword elegantName      cpickup
syntax keyword elegantName      csbend
syntax keyword elegantName      csrcsbend
syntax keyword elegantName      csrdrift
syntax keyword elegantName      cwiggler
syntax keyword elegantName      drif
syntax keyword elegantName      dscatter
syntax keyword elegantName      ecol
syntax keyword elegantName      edrift
syntax keyword elegantName      ehkicker
syntax keyword elegantName      ekicker
syntax keyword elegantName      ematrix
syntax keyword elegantName      emittance
syntax keyword elegantName      energy
syntax keyword elegantName      evkick
syntax keyword elegantName      floor
syntax keyword elegantName      fmult
syntax keyword elegantName      frfmode
syntax keyword elegantName      ftable
syntax keyword elegantName      ftrfmode
syntax keyword elegantName      gfwiggler
syntax keyword elegantName      gkickmap
syntax keyword elegantName      histogram
syntax keyword elegantName      hkick
syntax keyword elegantName      hkpoly
syntax keyword elegantName      hmon
syntax keyword elegantName      ibscatter
syntax keyword elegantName      ilmatrix
syntax keyword elegantName      ioneffects
syntax keyword elegantName      kicker
syntax keyword elegantName      koct
syntax keyword elegantName      kpoly
syntax keyword elegantName      kquad
syntax keyword elegantName      kquse
syntax keyword elegantName      ksext
syntax keyword elegantName      lmirror
syntax keyword elegantName      lrwake
syntax keyword elegantName      lscdrift
syntax keyword elegantName      lsrmdltr
syntax keyword elegantName      lthinlens
syntax keyword elegantName      magnify
syntax keyword elegantName      malign
syntax keyword elegantName      mapsolenoid
syntax keyword elegantName      mark
syntax keyword elegantName      matr
syntax keyword elegantName      matter
syntax keyword elegantName      maxamp
syntax keyword elegantName      mbumper
syntax keyword elegantName      mhistogram
syntax keyword elegantName      modrf
syntax keyword elegantName      moni
syntax keyword elegantName      mrfdf
syntax keyword elegantName      mult
syntax keyword elegantName      minbend
syntax keyword elegantName      nisept
syntax keyword elegantName      octu
syntax keyword elegantName      peppot
syntax keyword elegantName      pfilters
syntax keyword elegantName      polyseries
syntax keyword elegantName      quad
syntax keyword elegantName      qufringe
syntax keyword elegantName      rampp
syntax keyword elegantName      ramprf
syntax keyword elegantName      rben
syntax keyword elegantName      rcol
syntax keyword elegantName      recirc
syntax keyword elegantName      reflect
syntax keyword elegantName      remcor
syntax keyword elegantName      rfca
syntax keyword elegantName      rfcw
syntax keyword elegantName      rfdf
syntax keyword elegantName      rfmode
syntax keyword elegantName      rftm001
syntax keyword elegantName      rftmez0
syntax keyword elegantName      rimult
syntax keyword elegantName      mrdf
syntax keyword elegantName      rotate
syntax keyword elegantName      sample
syntax keyword elegantName      sben
syntax keyword elegantName      scatter
syntax keyword elegantName      scmult
syntax keyword elegantName      scraper
syntax keyword elegantName      script
syntax keyword elegantName      sext
syntax keyword elegantName      shrfdf
syntax keyword elegantName      slice
syntax keyword elegantName      sole
syntax keyword elegantName      speedbump
syntax keyword elegantName      sreffects
syntax keyword elegantName      stray
syntax keyword elegantName      taperapc
syntax keyword elegantName      taperape
syntax keyword elegantName      taperapr
syntax keyword elegantName      tfbdriver
syntax keyword elegantName      tfbpickup
syntax keyword elegantName      tmcf
syntax keyword elegantName      trcount
syntax keyword elegantName      trfmode
syntax keyword elegantName      trwake
syntax keyword elegantName      tscatter
syntax keyword elegantName      tubend
syntax keyword elegantName      twiss
syntax keyword elegantName      twla
syntax keyword elegantName      twmla
syntax keyword elegantName      twmta
syntax keyword elegantName      twpl
syntax keyword elegantName      ukickmap
syntax keyword elegantName      vkick
syntax keyword elegantName      vmon
syntax keyword elegantName      wake
syntax keyword elegantName      watch
syntax keyword elegantName      wiggler
syntax keyword elegantName      zlongit
syntax keyword elegantName      ztransverse

"defined by the language"
highlight link elegantCommand Statement
"highlight link elegantPunt Statement
"highlight link elegantPunt2 Statement
"highlight link elegantFunc Statement
"highlight link elegantAttribute Type
"highlight link elegantName Macro
"highlight link elegantVariables Special
"highlight link elegantType     Type

"defined by the user"
highlight link elegantComment Comment
highlight link elegantString String
highlight link elegantName Type
highlight link elegantNumber Number

"Hasta pronto
"EOF

