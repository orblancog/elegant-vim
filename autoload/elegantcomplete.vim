" oscar blanco
" this code creates the parameter autocompletion 
" for the elegant particle accelerator code
" https://ops.aps.anl.gov/manuals/elegant_latest/elegant.html
"
" orblancog@gmail.com 2022apr18
" NOTE : list of parameters separated by spaces 
"        WARNING, spaces are not visible, do not remove
"
let s:commands=""
let s:cparam=[]
let s:alter_elements=" 
\name=NULL, 
\item=NULL, 
\type=NULL, 
\exclude=NULL, 
\value=0, 
\string_value=NULL, 
\differential=0, 
\multiplicative=0, 
\alter_at_each_step=0, 
\alter_before_load_parameters=0, 
\verbose=0, 
\allow_missing_elements=0, 
\allow_missing_parameters=0, 
\start_occurence=0, 
\end_occurence=0, 
\s_start=-1, 
\s_end=-1, 
\before=NULL, 
\after=NULL,"
let s:commands=join([s:commands,"alter_elements"]," ")
call add(s:cparam,s:alter_elements)

let s:amplification_factors=" 
\output=NULL, 
\uncorrected_orbit_function=NULL, 
\corrected_orbit_function=NULL, 
\kick_function=NULL, 
\name=NULL, 
\type=NULL, 
\item=NULL, 
\plane=NULL, 
\change=1e-3, 
\number_to_do=-1, 
\maximum_z=0,"
let s:commands=join([s:commands,"amplification_factors"]," ")
call add(s:cparam,s:amplification_factors)

let s:analyze_map=" 
\output=NULL, 
\output_order=1, 
\printout=NULL, 
\printout_format=, 
\printout_order=2, 
\delta_x=5e-5, 
\delta_xp=5e-5, 
\delta_y=5e-5, 
\delta_yp=5e-5, 
\delta_s=5e-5, 
\delta_dp=5e-5, 
\accuracy_factor=1e-12, 
\center_on_orbit=0, 
\verbosity=0, 
\canonical_variables=0, 
\periodic=1, 
\beta_x=1, 
\alpha_x=0, 
\eta_x=0, 
\etap_x=0, 
\beta_y=1, 
\alpha_y=0, 
\eta_y=0, 
\etap_y=0, 
\n_points=9, 
\max_fit_order=8,"
let s:commands=join([s:commands,"analyze_map"]," ")
call add(s:cparam,s:analyze_map)

let s:aperture_data=" 
\input=NULL, 
\periodic=1, 
\persistent=0, 
\disable=0,"
let s:commands=join([s:commands,"aperture_data"]," ")
call add(s:cparam,s:aperture_data)

let s:bunched_beam=" 
\bunch=NULL,  
\n_particles_per_bunch=1, 
\time_start=0, 
\matched_to_cell=NULL, 
\emit_x=0, 
\emit_nx=0, 
\beta_x=1.0, 
\alpha_x=0.0, 
\eta_x=0.0, 
\etap_x=0.0, 
\emit_y=0, 
\emit_ny=0, 
\beta_y=1.0, 
\alpha_y=0.0, 
\eta_y=0.0, 
\etap_y=0.0, 
\use_twiss_command_values=0, 
\use_moments_output_values=0, 
\Po=0.0, 
\sigma_dp=0.0, 
\sigma_s=0.0, 
\dp_s_coupling=0, 
\emit_z=0, 
\beta_z=0, 
\alpha_z=0, 
\momentum_chirp=0, 
\one_random_bunch=1, 
\symmetrize=0, 
\halton_sequence[3]={0,0,0}, 
\halton_radix[6]={0,0,0,0,0,0}, 
\optimized_halton=0, 
\randomize_order[3]={0,0,0}, 
\limit_invariants=0, 
\limit_in_4d=0, 
\enforce_rms_values[3]={0,0,0}, 
\distribution_cutoff[3]={2,2,2}, 
\distribution_type[3]=gaussian... 
\centroid[6]={0.0,0.0,0.0,0.0,0.0,0.0}, 
\first_is_fiducial=0, 
\save_initial_coordinates=1,"
let s:commands=join([s:commands,"bunched_beam"]," ")
call add(s:cparam,s:bunched_beam)

let s:bunched_beam_moments=" 
\bunch=NULL, 
\n_particles_per_bunch=1, 
\use_moments_output_values=0, 
\S1_beta=0, 
\S2_beta=0, 
\S12_beta=0, 
\S16=0, 
\S26=0, 
\S3_beta=0, 
\S4_beta=0, 
\S34_beta=0, 
\S36=0, 
\S46=0, 
\S5=0, 
\S6=0, 
\S56=0, 
\time_start=0, 
\Po=0.0, 
\one_random_bunch=1, 
\save_initial_coordinates=1, 
\limit_invariants=0, 
\symmetrize=0, 
\halton_sequence[3]={0,0,0}, 
\halton_radix[6]={0,0,0,0,0,0}, 
\optimized_halton=0, 
\randomize_order[3]={0,0,0}, 
\limit_in_4d=0, 
\enforce_rms_values[3]={0,0,0}, 
\distribution_cutoff[3]={2,2,2}, 
\distribution_type[3]=gaussian...
\centroid[6]={0.0,0.0,0.0,0.0,0.0,0.0}, 
\first_is_fiducial=0," 
let s:commands=join([s:commands,"bunched_beam_moments"]," ")
call add(s:cparam,s:bunched_beam_moments)
 
let s:change_particle=" 
\name=electron..., 
\mass_ratio=0, 
\charge_ratio=0,"
let s:commands=join([s:commands,"change_particle"]," ")
call add(s:cparam,s:change_particle)

let s:change_start=" 
\element_name=NULL, 
\ring_mode=0,"
let s:commands=join([s:commands,"change_start"]," ")
call add(s:cparam,s:change_start)

let s:chaos_map=" 
\output=NULL, 
\xmin=-0.1, 
\xmax=0.1, 
\ymin=1e-6, 
\ymax=0.1, 
\delta_min=0, 
\delta_max=0, 
\nx=20, 
\ny=21, 
\ndelta=1, 
\forward_backward=0, 
\change_x=1e-6, 
\change_y=1e-6, 
\verbosity=1," 
let s:commands=join([s:commands,"chaos_map"]," ")
call add(s:cparam,s:chaos_map)

let s:chromaticity=" 
\sextupoles=NULL, 
\lower_limits=NULL, 
\upper_limits=NULL, 
\exclude=NULL, 
\dnux_dp=0, 
\dnuy_dp=0, 
\sextupole_tweek=1e-3, 
\correction_fraction=0.9, 
\n_iterations=5, 
\tolerance=0, 
\strength_log=NULL, 
\change_defined_values=0, 
\strength_limit=0, 
\use_perturbed_matrix=0, 
\exit_on_failure=0, 
\update_orbit=0, 
\verbosity=1, 
\dK2_weight=1," 
let s:commands=join([s:commands,"chromaticity"]," ")
call add(s:cparam,s:chromaticity)



function! elegantcomplete#elegantCommandCheck()
    " backwards search for an elegant command
    execute '?&'
    " read the command characters in line, col starts at 1, while strings index
    " start at zero
    let l:line = getline('.')
    " we substract 1 to get index zero, and add 1 to get the next element after &
    let l:tend = col('.')
    while  (l:line[l:tend] =~ '\a' || l:line[l:tend] =~ '.' || l:line[l:tend] =~ '-' || l:line[l:tend] =~ '_')
        let l:tend += 1
    endwhile
"   get the command characters after &
    let l:base = l:line[col('.') : l:tend-1]
"   check the list of known commands and set index, otherwise index = -1
    let indx = -1
    let counter = 0
    let splitcommands = split(s:commands)
    let lencommands = len(splitcommands)
    let ntfound = 1
    while  ntfound && (counter < lencommands)
        if  (splitcommands[counter] =~ '^' . l:base)
            let indx = counter
            let ntfound = 0
        endif
        let counter += 1
    endwhile
    return indx
endfun

function! elegantcomplete#CompleteParams(findstart, base)
    if a:findstart
        " locate the start of the word
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] =~ '.' || line[start - 1] =~ '-' || line[start - 1] =~ '_')
            let start -= 1
        endwhile
        return start
    else
        " find classes matching "a:base"
        let res = []
        let indxcom = elegantcomplete#elegantCommandCheck()
        let lencommands = len(split(s:commands))
        "" add index for debugging only
	call add(res,indxcom)
	if indxcom >= 0 && indxcom < lencommands
            for m in split(s:cparam[indxcom])
                if m =~ '^' . a:base
                    call add(res, m)
                endif
            endfor
        endif
        return res
    endif
endfun
