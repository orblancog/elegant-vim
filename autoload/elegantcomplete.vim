" orblancog@gmail.com 2022apr18
" edited from example
" https://vi.stackexchange.com/questions/4584/how-to-create-my-own-autocomplete-function


let s:alter_elements="name=NULL; 
\item=NULL; 
\type=NULL; 
\exclude=NULL; 
\value=0; 
\string_value=NULL; 
\differential=0; 
\multiplicative=0; 
\alter_at_each_step=0; 
\alter_before_load_parameters=0; 
\verbose=0; 
\allow_missing_elements=0; 
\allow_missing_parameters=0; 
\start_occurence=0; 
\end_occurence=0; 
\s_start=-1; 
\s_end=-1; 
\before=NULL; 
\after=NULL;"
let s:amplification_factors="output=NULL; 
\uncorrected_orbit_function=NULL; 
\corrected_orbit_function=NULL; 
\kick_function=NULL; 
\name=NULL; 
\type=NULL; 
\item=NULL; 
\plane=NULL; 
\change=1e-3; 
\number_to_do=-1; 
\maximum_z=0;"
let s:analyze_map="output=NULL; 
\output_order=1; 
\printout=NULL; 
\printout_format="%22.15e "; 
\printout_order=2; 
\delta_x=5e-5; 
\delta_xp=5e-5; 
\delta_y=5e-5; 
\delta_yp=5e-5; 
\delta_s=5e-5; 
\delta_dp=5e-5; 
\accuracy_factor=1e-12; 
\center_on_orbit=0; 
\verbosity=0; 
\canonical_variables=0; 
\periodic=1; 
\beta_x=1; 
\alpha_x=0; 
\eta_x=0; 
\etap_x=0; 
\beta_y=1; 
\alpha_y=0; 
\eta_y=0; 
\etap_y=0; 
\n_points=9; 
\max_fit_order=8;"

let s:m04="input periodic persistent disable"
let s:m05="bunch n_particles_per_bunch time_start matched_to_cell emit_x emit_nx beta_x alpha_x eta_x etap_x emit_y emit_ny beta_y alpha_y eta_y etap_y use_twiss_command_values use_moments_output_values Po sigma_dp sigma_s dp_s_coupling emit_z beta_z alpha_z momentum_chirp one_random_bunch symmetrize halton_sequence[3] halton_radix[6] optimized_halton randomized_order[3] limit_invariants limit_in_4d enforce_rms_values[3] distribution_cutoff[3] distribution_type[3] centroid[6] first_is_fiducial save_initial_coordinates"
let s:m06="bunch n_particles_per_bunch use_moments_output_values S1_beta S2_beta S12_beta S16 S26 S3_beta S4_beta S34_beta S36 S46 S5 S6 S56 time_start Po one_random_bunch save_initial_coordinates limit_invariants symmetrize halton_sequence[3] halton_radix[6] optimized_halton randomize_order[3] limit_in_4d enforce_rms_values[3] distribution_cutoff distribution_type[3] centroid[6] first_is_fiducial"
let s:m07="name mass_ratio charge_ratio"
let s:m08="element_name ring_mode"
let s:m09="output xmin xmax ymin ymax delta_min delta_max nx ny ndelta forward_backward change_x change_y verbosity"
let s:m10="sextupoles lower_limits upper_limits exclude dnux_dp dnuy_dp sextupole_tweek correction_fraction n_iterations tolerance strength_log change_defined_values strength_limit use_perturbed_matrix exit_on_failure update_orbit verbosity dK2_weight"
let s:m11="output output_monitors_only start_from_centroid start_from_dp_centroid closed_orbit_accuracy closed_orbit_accuracy_requirement closed_orbit_iterations fixed_length start_from_recirc verbosity iteration_fraction fraction_multiplier multiplier_interval output_monitors_only tracking_turns disable immediate"
let s:m12="mode method trajectory_output corrector_output statistics bpm_output corrector_tweek[2] corrector_limit[2] correction_fraction[2] correction_accuracy[2] do_correction[2] remove_smallest_SVs[2] keep_largest_SVs[2] minimum_SV_ratio[2] autolimit_SVs[2] removed_pegged[2] threading_divisor[2]  threading_correctors[2] bpm_noise[2] bpm_noise_cutoff[2] bpm_noise_distribution[2] verbose fixed_length fixed_length_matrix n_xy_cycles minimum_cycles force_alternation n_iterations prezero_correctors track_before_and_after start_from_centroid use_actual_beam closed_orbit_accuracy closed_orbit_accuracy_requirement closed_orbit_iterations closed_orbit_iteration_fraction closed_orbit_fraction_multiplier closed_orbit_multiplier_interval closed_orbit_tracking_turns use_perturbed_matrix disable use_response_from_computed_orbits"
let s:m13="response[4] inverse[2] KnL_units BnL_units output_at_each_step output_before_tune_correction fixed_length coupled use_response_from_computed_orbits"
let s:m14="quadrupoles lower_limits upper_limits exclude tune_x tune_y n_iterations correction_fraction tolerance step_up_interval max_correction_fraction delta_correction_fraction update_orbit strength_log change_defined_values use_perturber_matrix dK1_weight "
let s:m15="filename output_at_each_step emittances_from_twiss_command emit_x emittance_ratio sigma_dp calculate_3d_coupling verbosity concat_order"
let s:m16="name type exclude divisions maximum_length clear"
let s:m17="losses output log_file theta_min theta_max n_theta n_phi twiss_scaling s_start s_end include_name_pattern include_type_pattern verbosity"
let s:m18="name element_type item type amplitude cutoff bind bind_number bind_across_names post_correction fractional additive allow_missing_elements after before sample_file sample_file_column sample_mode"
let s:m19="clear_error_settings summarize_error_settings no_errors_for_first_step error_log error_factor"
let s:m20="output search_output boundary mode xmin xmax xpmin xpmax ymin ymax ypmin ypmax nx ny n_splits split_fraction desired_resolution assume_nonincreasing verbosity offset_by_orbit n_lines optimization_mode full_plane"
let s:m21="filename X0 Z0 theta0 include_vertices vertices_only magnet_centers store_vertices"
let s:m22="output xmin xmax ymin ymax delta_min delta_max nx ny ndelta verbosity include_changes quadratic_spacing full_grid_output"
let s:m23="inhibit_fsync allow_overwriting echo_namelists mpi_randomization_mode exact_normalized_emittance SR_gaussian_limit inhibit_seed_permutation log_file error_log_file mpi_io_force_file_sync usleep_mpi_io_kludge mpi_io_read_buffer_size mpi_io_write_buffer_size parallel_tracking_based_matrices share_tracking_based_matrices tracking_based_matrices_store_limit tracking_matrix_step_factor tracking_matrix_points tracking_matrix_step_size[6]"
let s:m24="name type exclude disable clear completely"
let s:m25="losses output log_file k_min momentum_aperture momentum_aperture_scale momentum_aperture_periodicity n_k s_start s_end include_name_pattern include_type_pattern verbosity soft_failure allow_watch_file_output"
let s:m26="name type exclude s_start s_end skip disable insert_before add_at_end add_at_start element_def total_ocurrences occurrence[100]"
let s:m27="name type exclude disable clear element_prefix skip vertical horizontal nonlinear uniform_distribution verbosity averaging_factor"
let s:m28="pressure_profile pressure_factor ion_properties beam_output beam_output_all_locations ion_density_output ion_output_all_locations ion_species_output ion_output_interval field_calculation_method gaussian_ion_range distribution_fit_target distribution_fit_tolerance distribution_fit_evaluations distribution_fit_passes distribution_fit_restarts hybrid_simplex_comparison_interval fit_residual_type macro_ions symmetrize generation_interval multiple_ionization_interval multiple_ionization_energy_peak multiple_ionization_energy_rms ion_span[2] ion_bin_divisor[2] ion_range_multiplier[2] ion_sigma_limit_multiplier[2] ion_histogram_max_bins ion_histogram_min_per_bin ion_histogram_output  "
let s:commands="
\alter_elements 
\amplification_factors 
\analyze_map 
\aperture_data 
\bunched_beam
\bunched_beam_moments
\change_particle
\change_start
\chaos_map
\chromaticity
\closed_orbit
\correct
\correction_matrix_output
\correct_tunes
\coupled_twiss_output
\divide_elements
\elastic_scattering
\error_element
\error_control
\find_aperture
\floor_coordinates
\frequency_map
\global_settings
\ignore_elements
\inelastic_scattering
\insert_elements
\insert_sceffects
\ion_effects"
let s:cparam=[
\s:alter_elements,
\s:amplification_factors,
\s:m03,
\s:m04,
\s:m05,
\s:m06]

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
