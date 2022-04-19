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

" this code creates the parameter autocompletion 
" for the elegant particle accelerator code
" https://ops.aps.anl.gov/manuals/elegant_latest/elegant.html
"
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



" NOTE : the list of parameters is separated by spaces 
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

let s:closed_orbit=" 
\output=NULL, 
\output_monitors_only=0, 
\start_from_centroid=1, 
\start_from_dp_centroid=0, 
\closed_orbit_accuracy=1e-12, 
\closed_orbit_accuracy_requirement=1e-7, 
\closed_orbit_iterations=40, 
\fixed_length=0, 
\start_from_recirc=0, 
\verbosity=0, 
\iteration_fraction=0.9, 
\fraction_multiplier=1.05, 
\multiplier_interval=5, 
\output_monitors_only=0, 
\tracking_turns=0, 
\disable=0, 
\immediate=0," 
let s:commands=join([s:commands,"closed_orbit"]," ")
call add(s:cparam,s:closed_orbit)

let s:correct=" 
\mode=trajectory... 
\method=global..., 
\trajectory_output=NULL, 
\corrector_output=NULL, 
\statistics=NULL, 
\bpm_output=NULL, 
\corrector_tweek[2]={1e-6,1e-6}, 
\corrector_limit[2]={0,0}, 
\correction_fraction[2]={1,1}, 
\correction_accuracy[2]={1e-6,1e-6}, 
\do_correction[2]={1,1}, 
\remove_smallest_SVs[2]={0,0}, 
\keep_largest_SVs[2]={0,0}, 
\minimum_SV_ratio[2]={0,0}, 
\auto_limit_SVs[2]={1,1}, 
\removed_pegged[2]={0,0}, 
\threading_divisor[2]={100,100}, 
\threading_correctors[2]={-1,-1}, 
\bpm_noise[2]={0,0}, 
\bpm_noise_cutoff[2]={1.0,1.0}, 
\bpm_noise_distribution[2]=uniform..., 
\verbose=1, 
\fixed_length=0, 
\fixed_length_matrix=0, 
\n_xy_cycles=1, 
\minimum_cycles=1, 
\force_alternation=0, 
\n_iterations=1, 
\prezero_correctors=1, 
\track_before_and_after=0, 
\start_from_centroid=1, 
\use_actual_beam=0, 
\closed_orbit_accuracy=1e-12, 
\closed_orbit_accuracy_requirement=1e-7, 
\closed_orbit_iterations=40, 
\closed_orbit_iteration_fraction=0.9, 
\closed_orbit_fraction_multiplier=1.05, 
\closed_orbit_multiplier_interval=5, 
\closed_orbit_tracking_turns=0, 
\use_perturbed_matrix=0, 
\disable=0, 
\use_response_from_computed_orbits=0," 
let s:commands=join([s:commands,"correct"]," ")
call add(s:cparam,s:correct)

let s:correction_matrix_output=" 
\response[4]=NULL,NULL, 
\inverse[2]=NULL,NULL, 
\KnL_units=0, 
\BnL_units=0, 
\output_at_each_step=0, 
\output_before_tune_correction=0, 
\fixed_length=0, 
\coupled=0, 
\use_response_from_computed_orbits=0," 
let s:commands=join([s:commands,"correction_matrix_output"]," ")
call add(s:cparam,s:correction_matrix_output)

let s:correct_tunes=" 
\quadrupoles=NULL, 
\lower_limits=NULL, 
\upper_limits=NULL, 
\exclude=NULL, 
\tune_x=0, 
\tune_y=0, 
\n_iterations=5, 
\correction_fraction=0.9, 
\tolerance=0, 
\step_up_interval=0, 
\max_correction_fraction=0.9, 
\delta_correction_fraction=0.1, 
\update_orbit=0, 
\strength_log=NULL, 
\change_defined_values=0, 
\use_perturbed_matrix=0, 
\dK1_weight=1,"
let s:commands=join([s:commands,"correct_tunes"]," ")
call add(s:cparam,s:correct_tunes)

let s:coupled_twiss_output=" 
\filename=NULL, 
\output_at_each_step=0, 
\emittances_from_twiss_command=1, 
\emit_x=0, 
\emittance_ratio=0.01, 
\sigma_dp=0, 
\calculate_3d_coupling=1, 
\verbosity=0, 
\concat_order=2," 
let s:commands=join([s:commands,"coupled_twiss_output"]," ")
call add(s:cparam,s:coupled_twiss_output)

let s:divide_elements=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\divisions=0, 
\maximum_length=0, 
\clear=0," 
let s:commands=join([s:commands,"divide_elements"]," ")
call add(s:cparam,s:divide_elements)

let s:elastic_scattering=" 
\losses=NULL, 
\output=NULL, 
\log_file=NULL, 
\theta_min=0.001, 
\theta_max=0.010, 
\n_theta=11, 
\n_phi=37, 
\twiss_scaling=0, 
\s_start=0, 
\s_end=DBL_MAX, 
\include_name_pattern=NULL, 
\include_type_pattern=NULL, 
\verbosity=1," 
let s:commands=join([s:commands,"elastic_scattering"]," ")
call add(s:cparam,s:elastic_scattering)

let s:error_element=" 
\name=NULL, 
\element_type=NULL, 
\item=NULL, 
\type=gaussian..., 
\amplitude=0.0, 
\cutoff=3.0, 
\bind=1, 
\bind_number=0, 
\bind_across_names=0, 
\post_correction=0, 
\fractional=0, 
\additive=1, 
\allow_missing_elements=0, 
\after=NULL, 
\before=NULL, 
\sample_file=NULL, 
\sample_file_column=NULL, 
\sample_mode=NULL,"
let s:commands=join([s:commands,"error_element"]," ")
call add(s:cparam,s:error_element)

let s:error_control=" 
\clear_error_settings=1, 
\summarize_error_settings=0, 
\no_errors_for_first_step=0, 
\error_log=NULL, 
\error_factor=1,"
let s:commands=join([s:commands,"error_control"]," ")
call add(s:cparam,s:error_control)

let s:find_aperture=" 
\output=NULL, 
\search_output=NULL, 
\boundary=NULL, 
\mode=many-particle..., 
\xmin=-0.1, 
\xmax=0.1, 
\xpmin=0.0, 
\xpmax=0.0, 
\ymin=0.0, 
\ymax=0.1, 
\ypmin=0.0, 
\ypmax=0.0, 
\nx=21, 
\ny=11, 
\n_splits=0, 
\split_fraction=0.5, 
\desired_resolution=0.01, 
\assume_nonincreasing=0, 
\verbosity=0, 
\offset_by_orbit=0, 
\n_lines=11, 
\optimization_mode=0, 
\full_plane=0," 
let s:commands=join([s:commands,"find_aperture"]," ")
call add(s:cparam,s:find_aperture)

let s:floor_coordinates=" 
\filename=NULL, 
\X0=0.0, 
\Z0=0.0, 
\theta0=0.0, 
\include_vertices=0, 
\vertices_only=0, 
\magnet_centers=0, 
\store_vertices=0,"
let s:commands=join([s:commands,"floor_coordinates"]," ")
call add(s:cparam,s:floor_coordinates)

let s:frequency_map=" 
\output=NULL, 
\xmin=-0.1, 
\xmax=0.1, 
\ymin=1e-6, 
\ymax=0.1, 
\delta_min=0, 
\delta_max=0, 
\nx=21, 
\ny=21, 
\ndelta=1, 
\verbosity=1, 
\include_changes=0, 
\quadratic_spacing=0, 
\full_grid_output=0,"
let s:commands=join([s:commands,"frequency_map"]," ")
call add(s:cparam,s:frequency_map)

let s:global_settings=" 
\inhibit_fsync=0, 
\allow_overwriting=1, 
\echo_namelists=1, 
\mpi_randomization_mode=3, 
\exact_normalized_emittance=0, 
\SR_gaussian_limit=3.0, 
\inhibit_seed_permutation=0, 
\log_file=NULL, 
\error_log_file=NULL, 
\mpi_io_force_file_sync=0, 
\usleep_mpi_io_kludge=0, 
\mpi_io_read_buffer_size=0, 
\mpi_io_write_buffer_size=0, 
\parallel_tracking_based_matrices=1, 
\share_tracking_based_matrices=1, 
\tracking_based_matrices_store_limit=5000, 
\tracking_matrix_step_factor=1, 
\tracking_matrix_points=9, 
\tracking_matrix_step_size[6]={5e-5,5e-5,5e-5,5e-5,5e-5,5e-5},"
let s:commands=join([s:commands,"global_settings"]," ")
call add(s:cparam,s:global_settings)

let s:ignore_elements=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\disable=0, 
\clear=0, 
\completely=0,"
let s:commands=join([s:commands,"ignore_elements"]," ")
call add(s:cparam,s:ignore_elements)

let s:inelastic_scattering=" 
\losses=NULL, 
\output=NULL, 
\log_file=NULL, 
\k_min=0.001, 
\momentum_aperture=NULL, 
\momentum_aperture_scale=0.90, 
\momentum_aperture_periodicity=0, 
\n_k=101, 
\s_start=0, 
\s_end=DBL_MAX, 
\include_name_pattern=NULL, 
\include_type_pattern=NULL, 
\verbosity=1, 
\soft_failure=0, 
\allow_watch_file_output=0,"
let s:commands=join([s:commands,"inelastic_scattering"]," ")
call add(s:cparam,s:inelastic_scattering)

let s:insert_elements=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\s_start=-1, 
\s_end=-1, 
\skip=1, 
\disable=0, 
\insert_before=0, 
\add_at_end=0, 
\add_at_start=0, 
\element_def=NULL, 
\total_occurrences=0, 
\occurrence[100]={0},"
let s:commands=join([s:commands,"insert_elements"]," ")
call add(s:cparam,s:insert_elements)

let s:insert_sceffects=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\disable=0, 
\clear=0, 
\element_prefix=MYSC..., 
\skip=0, 
\vertical=0, 
\horizontal=0, 
\nonlinear=0, 
\uniform_distribution=0, 
\verbosity=0, 
\averaging_factor=1," 
let s:commands=join([s:commands,"insert_sceffects"]," ")
call add(s:cparam,s:insert_sceffects)

let s:ion_effects=" 
\pressure_profile=NULL, 
\pressure_factor=1.0, 
\ion_properties=NULL, 
\beam_output=NULL, 
\beam_output_all_locations=0, 
\ion_density_output=NULL, 
\ion_output_all_locations=1, 
\ion_species_output=0, 
\ion_output_interval=1, 
\field_calculation_method=NULL, 
\gaussian_ion_range=3, 
\distribution_fit_target=0.03, 
\distribution_fit_tolerance=1e-5, 
\distribution_fit_evaluations=300, 
\distribution_fit_passes=3, 
\distribution_fit_restarts=10, 
\hybrid_simplex_comparison_interval=-1, 
\fit_residual_type=NULL, 
\macro_ions=0, 
\symmetrize=0, 
\generation_interval=1, 
\multiple_ionization_interval=100, 
\multiple_ionization_energy_peak=20, 
\multiple_ionization_energy_rms=10, 
\ion_span[2]={0,0}, 
\ion_bin_divisor[2]={10.0,10.0}, 
\ion_range_multiplier[2]={2.0,2.0}, 
\ion_sigma_limit_multiplier[2]={0,0}, 
\ion_histogram_max_bins=1000, 
\ion_histogram_min_per_bin=5, 
\ion_histogram_output=NULL, 
\ion_histogram_output_s_start=-1, 
\ion_histogram_output_s_end=-1, 
\ion_histogram_output_interval=1000, 
\ion_histogram_min_output_bins=200, 
\disable_until_pass=0, 
\freeze_ions_until_pass=0, 
\freeze_electrons_until_pass=0, 
\verbosity=0,"
let s:commands=join([s:commands,"ion_effects"]," ")
call add(s:cparam,s:ion_effects)

let s:linear_chromatic_tracking_setup=" 
\nux[4]={-1,0,0,0}, 
\betax[2]={1.0,0.0}, 
\alphax[2]={0.0,0.0}, 
\etax[2]={0.0,0.0}, 
\etapx[2]={0.0,0.0}, 
\nuy[4]={-1,0,0,0}, 
\betay[2]={1.0,0.0}, 
\alphay[2]={0.0,0.0}, 
\etay[2]={0.0,0.0}, 
\etapy[2]={0.0,0.0}, 
\alphac[2]={0.0,0.0},"
let s:commands=join([s:commands,"linear_chromatic_tracking_setup"]," ")
call add(s:cparam,s:linear_chromatic_tracking_setup)

let s:link_control=" 
\clear_links=1, 
\summarize_links=0, 
\verbosity=0, "
let s:commands=join([s:commands,"link_control"]," ")
call add(s:cparam,s:link_control)

let s:link_elements="
\target=NULL, 
\exclude=NULL, 
\item=NULL, 
\source=NULL, 
\source_from_target_edit=NULL, 
\source_position=before..., 
\mode=dynamic..., 
\equation=NULL, 
\minimium=-DBL_MAX, 
\maximum=DBL_MAX, 
\exclude_self=1, "
let s:commands=join([s:commands,"link_elements"]," ")
call add(s:cparam,s:link_elements)

let s:load_parameters=" 
\filename=NULL, 
\filename_list=NULL, 
\include_name_pattern=NULL, 
\exclude_name_pattern=NULL, 
\include_item_pattern=NULL, 
\exclude_item_pattern=NULL, 
\include_type_pattern=NULL, 
\exclude_type_pattern=NULL, 
\edit_name_command=NULL, 
\change_defined_values=0, 
\clear_settings=0, 
\allow_missing_elements=0, 
\allow_missing_parameters=0, 
\allow_missing_files=0, 
\force_occurence_data=0, 
\verbose=0, 
\skip_pages=0, 
\use_first=0, "
let s:commands=join([s:commands,"load_parameters"]," ")
call add(s:cparam,s:load_parameters)

let s:matrix_output=" 
\printout=NULL, 
\printout_order=1, 
\printout_format=%22.15e..., 
\full_matrix_only=0, 
\print_element_data=1, 
\mathematica_full_matrix=0, 
\mathematica_matrix_name=MFull..., 
\mathematica_matrix_file=NULL, 
\SDDS_output=NULL, 
\SDDS_output_order=1, 
\individual_matrices=0, 
\SDDS_output_match=NULL, 
\output_at_each_step=0, 
\start_from=NULL, 
\start_from_occurence=1," 
let s:commands=join([s:commands,"matrix_output"]," ")
call add(s:cparam,s:matrix_output)

let s:modulate_elements=" 
\name=NULL, 
\item=NULL, 
\type=NULL, 
\expression=NULL, 
\filename=NULL, 
\time_column=NULL, 
\convert_pass_to_time, 
\amplitude_column=NULL, 
\refresh_matrix=0, 
\differential=1, 
\multiplicative=0, 
\start_occurence=0, 
\end_occurence=0, 
\s_start=-1, 
\s_end=-1, 
\before=NULL, 
\after=NULL, 
\verbose=0, 
\verbose_threshold=0, 
\record=NULL, 
\flush_record=1,"
let s:commands=join([s:commands,"modulate_elements"]," ")
call add(s:cparam,s:modulate_elements)

let s:moments_output=" 
\filename=NULL, 
\output_at_each_step=0, 
\output_before_tune_correction=0, 
\final_values_only=0, 
\verbosity=0, 
\matched=1, 
\equilibrium=1, 
\radiation=1, 
\n_slices=10, 
\tracking_based_diffusion_matrix_particles=1000, 
\slice_etilted=1, 
\emit_x=0, 
\beta_x=0, 
\alpha_x=0, 
\eta_x=0, 
\etap_x=0, 
\emit_y=0, 
\beta_y=0, 
\alpha_y=0, 
\eta_y=0, 
\etap_y=0, 
\emit_z=0, 
\beta_z=0, 
\alpha_z=0, " 
let s:commands=join([s:commands,"moments_output"]," ")
call add(s:cparam,s:moments_output)

let s:momentum_aperture=" 
\output=NULL, 
\x_initial=0, 
\y_initial=0, 
\delta_negative_start=0.0, 
\delta_positive_start=0.0, 
\delta_negative_limit=-0.10, 
\delta_positive_limit=0.10, 
\delta_step_size=0.01, 
\steps_back=1, 
\splits=2, 
\split_step_divisor=10, 
\skip_elements=0, 
\process_elements=2147483647, 
\s_start=0, 
\s_end=DBL_MAX, 
\include_name_pattern=NULL, 
\include_type_pattern=NULL, 
\fiducialize=0, 
\verbosity=1, 
\soft_failure=0, 
\output_mode=0, 
\forbid_resonance_crossing=0, "
let s:commands=join([s:commands,"momentum_aperture"]," ")
call add(s:cparam,s:momentum_aperture)

let s:obstruction_data=" 
\input=NULL, 
\periods=1, 
\disable=0, 
\y_spacing=0, 
\y_limit[2]={-10,10}, "
let s:commands=join([s:commands,"obstruction_data"]," ")
call add(s:cparam,s:obstruction_data)

let s:optimize=" 
\summarize_setup=0, "
let s:commands=join([s:commands,"optimize"]," ")
call add(s:cparam,s:optimize)

let s:optimization_constraint=" 
\quantity=NULL, 
\lower=0, 
\upper=0, "
let s:commands=join([s:commands,"optimization_constraint"]," ")
call add(s:cparam,s:optimization_constraint)

let s:optimization_covariable=" 
\name=NULL, 
\item=NULL, 
\equation=NULL, 
\disable=0, "
let s:commands=join([s:commands,"optimization_covariable"]," ")
call add(s:cparam,s:optimization_covariable)

let s:optimization_setup=" 
\equation=NULL, 
\mode=minimize..., 
\method=simplex..., 
\tolerance=-0.01, 
\target=0, 
\center_on_orbit=0, 
\center_momentum_also=1, 
\soft_failure=1, 
\n_passes=2, 
\n_evaluations=500, 
\n_restarts=0, 
\matrix_order=1, 
\log_file=NULL, 
\term_log_file=NULL, 
\output_sparsing_factor=0, 
\balance_terms=0, 
\restart_worst_term_factor=1, 
\restart_worst_terms=1, 
\verbose=1, 
\balance_terms=0, 
\simplex_divisor=3, 
\simplex_pass_range_factor=1, 
\include_simplex_1d_scans=1, 
\start_from_simplex_vertex1=0, 
\restart_random_numbers=0, 
\interrupt_file=..., 
\interrupt_file_check_interval=0, "
let s:commands=join([s:commands,"optimization_setup"]," ")
call add(s:cparam,s:optimization_setup)

let s:parallel_optimization_setup=" 
\method=simplex..., 
\hybrid_simplex_tolerance=-0.01, 
\hybrid_simplex_tolerance_count=2, 
\hybrid_simplex_comparison_interval=0, 
\random_factor=1 
\n_iterations=10000, 
\max_no_change=10000, 
\population_size=100, 
\population_log=NULL, 
\print_all_individuals=0, 
\output_sparsing_factor=1, 
\crossover=twopoint..., 
\simplex_log=NULL, 
\simplex_log_interval=1, "
let s:commands=join([s:commands,"parallel_optimization_setup"]," ")
call add(s:cparam,s:parallel_optimization_setup)

let s:optimization_term=" 
\term=NULL, 
\weight=1.0, 
\field_string=NULL, 
\field_initial_value=0, 
\field_final_value=0, 
\field_interval=1, 
\input_file=NULL, 
\input_column=NULL, 
\verbose=0, "
let s:commands=join([s:commands,"optimization_term"]," ")
call add(s:cparam,s:optimization_term)

let s:optimization_variable=" 
\name=NULL, 
\item=NULL, 
\lower_limit=0, 
\upper_limit=0, 
\differential_limits=0, 
\step_size=1, 
\disable=0, 
\force_inside=0, 
\no_element=0, 
\initial_value=0, "
let s:commands=join([s:commands,"optimization_variable"]," ")
call add(s:cparam,s:optimization_variable)

let s:print_dictionary=" 
\filename=NULL, 
\SDDS_form=0, "
let s:commands=join([s:commands,"print_dictionary"]," ")
call add(s:cparam,s:print_dictionary)

let s:ramp_elements=" 
\name=NULL, 
\item=NULL, 
\type=NULL, 
\start_pass=0, 
\end_pass=LONG_MAX, 
\start_value=0, 
\end_value=0, 
\refresh_matrix=0, 
\differential=1, 
\multiplicative=0, 
\start_occurence=0, 
\end_occurence=0, 
\exponent=1, 
\s_start=-1, 
\s_end=-1, 
\before=NULL, 
\after=NULL, 
\verbose=0, 
\record=NULL, "
let s:commands=join([s:commands,"ramp_elements"]," ")
call add(s:cparam,s:ramp_elements)

let s:rf_setup=" 
\filename=NULL, 
\name=NULL, 
\start_occurence=-1, 
\end_occurence=-1, 
\s_start=-1, 
\s_end=-1, 
\set_for_each_step=0, 
\near_frequency=0, 
\harmonic=-1, 
\bucket_half_height=0, 
\over_voltage=0, 
\total_voltage=0, 
\disable=0, 
\output_only=0, 
\track_for_frequency=0, "
let s:commands=join([s:commands,"rf_setup"]," ")
call add(s:cparam,s:rf_setup)

let s:replace_elements=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\skip=1, 
\disable=0, 
\element_def=NULL, 
\total_occurrences=0, 
\occurrence[100]={0}, "
let s:commands=join([s:commands,"replace_elements"]," ")
call add(s:cparam,s:replace_elements)

let s:rpn_expression="
\expression=NULL, "
let s:commands=join([s:commands,"rpn_expression"]," ")
call add(s:cparam,s:rpn_expression)

let s:rpn_load="
\tag=NULL, 
\filename=NULL, 
\match_column=NULL, 
\match_column_value=NULL, 
\matching_row_number=-1, 
\match_parameter=NULL, 
\match_parameter_value=NULL, 
\use_row=-1, 
\use_page=-1, 
\load_parameters=0, "
let s:commands=join([s:commands,"rpn_load"]," ")
call add(s:cparam,s:rpn_load)

let s:run_control=" 
\n_steps=1, 
\bunch_frequency=0, 
\n_indices=0, 
\n_passes=1, 
\n_passes_fiducial=0, 
\reset_rf_for_each_step=1, 
\first_is_fiducial=0, 
\restrict_fiducialization=0, "
let s:commands=join([s:commands,"run_control"]," ")
call add(s:cparam,s:run_control)


let s:run_setup=" 
\lattice=NULL, 
\use_beamline=NULL, 
\rootname=NULL, 
\output=NULL, 
\centroid=NULL, 
\bpm_centroid=NULL, 
\sigma=NULL, 
\final=NULL, 
\acceptance=NULL, 
\losses=NULL, 
\losses_include_global_coordinates=0, 
\losses_s_limit[2]={-DBL_MAX,DBL_MAX}, 
\magnets=NULL, 
\semaphore_file=NULL, 
\parameters=NULL, 
\suppress_parameter_defaults=0, 
\rfc_reference_output=NULL, 
\combine_bunch_statistics=0, 
\wrap_around=1, 
\final_pass=0, 
\default_order=2, 
\concat_order=0, 
\print_statistics=0, 
\show_element_timing=0, 
\monitor_memory_usage=0, 
\random_number_seed=987654321, 
\correction_iterations=1, 
\p_central=0.0, 
\p_central_mev=0.0, 
\always_change_p0=0, 
\expand_for=NULL, 
\tracking_updates=1, 
\echo_lattice=0, 
\search_path=NULL, 
\element_divisions=0, 
\load_balancing_on=0, 
\back_tracking=0, "
let s:commands=join([s:commands,"run_setup"]," ")
call add(s:cparam,s:run_setup)


let s:sasefel=" 
\output=NULL, 
\model=MingXie..., 
\beta=0, 
\undulator_K=3.1, 
\undulator_period=0.033, 
\slice_fraction=0.0, 
\n_slices=0, "
let s:commands=join([s:commands,"sasefel"]," ")
call add(s:cparam,s:sasefel)

let s:save_lattice=" 
\filename=NULL, 
\output_seq=0, "
let s:commands=join([s:commands,"save_lattice"]," ")
call add(s:cparam,s:save_lattice)

let s:sdds_beam=" 
\input=NULL, 
\input_list=NULL, 
\input_type=elegant..., 
\n_particles_per_ring=0, 
\selection_parameter=NULL, 
\selection_string=NULL, 
\one_random_bunch=0, 
\reuse_bunch=0, 
\prebunched=-1, 
\track_pages_separately=0, 
\use_bunched_mode=0, 
\fiducialization_bunch=0, 
\sample_interval=1, 
\n_tables_to_skip=0, 
\center_transversely=0, 
\center_arrival_time=0, 
\sample_fraction=1, 
\p_lower=0.0, 
\p_upper=0.0, 
\save_initial_coordinates=1, 
\reverse_t_sign=0, 
\n_duplicates=0, 
\duplicate_stagger[6]={0,0,0,0,0,0}, "
let s:commands=join([s:commands,"sdds_beam"]," ")
call add(s:cparam,s:sdds_beam)

let s:semaphores=" 
\started=..., 
\done=..., 
\failed=..., "
let s:commands=join([s:commands,"semaphores"]," ")
call add(s:cparam,s:semaphores)

let s:set_reference_particle_output=" 
\match_to=NULL, 
\weight[6]={1,1,1,1,0,1}, 
\comparison_mode=NULL, "
let s:commands=join([s:commands,"set_reference_particle_output"]," ")
call add(s:cparam,s:set_reference_particle_output)

let s:slice_analysis=" 
\output=NULL, 
\n_slices=0, 
\s_start=0, 
\s_end=1e300, 
\final_values_only=0, "
let s:commands=join([s:commands,"slice_analysis"]," ")
call add(s:cparam,s:slice_analysis)

let s:subprocess="
\command=NULL, "
let s:commands=join([s:commands,"subprocess"]," ")
call add(s:cparam,s:subprocess)

let s:steering_element=" 
\name=NULL, 
\element_type=NULL, 
\item=NULL, 
\plane=h..., 
\tweek=1e-3, 
\limit=0, 
\start_occurence=0, 
\end_occurence=0, 
\occurence_step=1, 
\s_start=-1, 
\s_end=-1, 
\after=NULL, 
\before=NULL, "
let s:commands=join([s:commands,"steering_element"]," ")
call add(s:cparam,s:steering_element)

let s:touschek_scatter=" 
\charge=0, 
\frequency=1, 
\emit_x=0, 
\emit_nx=0, 
\emit_y=0, 
\emit_ny=0, 
\sigma_dp=0, 
\sigma_s=0, 
\distribution_cutoff[3]={3,3,3}, 
\Momentum_Aperture_scale=0.85, 
\Momentum_Aperture=NULL, 
\XDist=NULL, 
\YDist=NULL, 
\ZDist=NULL, 
\TranDist=NULL, 
\FullDist=NULL, 
\bunch=NULL, 
\loss=NULL, 
\distribution=NULL, 
\initial=NULL, 
\output=NULL, 
\nbins=100, 
\sbin_step=1, 
\n_simulated=5000000, 
\ignored_portion= 0.01, 
\i_start=0, 
\i_end=1, 
\do_track=0, 
\match_position_only=0, 
\overwrite_files=1, 
\verbosity=0, "
let s:commands=join([s:commands,"touschek_scatter"]," ")
call add(s:cparam,s:touschek_scatter)

let s:transmute_elements=" 
\name=NULL, 
\type=NULL, 
\exclude=NULL, 
\new_type=DRIF..., 
\disable=0, 
\clear=0, "
let s:commands=join([s:commands,"transmute_elements"]," ")
call add(s:cparam,s:transmute_elements)

let s:tune_footprint=" 
\delta_output=NULL, 
\xy_output=NULL, 
\xmin=-0.02, 
\xmax=0.02, 
\ymin=1e-6, 
\ymax=0.02, 
\x_for_delta=1e-6, 
\y_for_delta=1e-6, 
\delta_min=0, 
\delta_max=0, 
\ndelta=21, 
\separate_xy_for_delta=0, 
\nx=20, 
\ny=21, 
\verbosity=1, 
\quadratic_spacing=1, 
\compute_diffusion=1, 
\diffusion_rate_limit=-5, 
\immediate=0 
\filtered_output=1, 
\ignore_half_integer=0, "
let s:commands=join([s:commands,"tune_footprint"]," ")
call add(s:cparam,s:tune_footprint)

let s:twiss_analysis=" 
\match_name=NULL, 
\start_name=NULL, 
\end_name=NULL, 
\s_start=-1, 
\s_end=-1, 
\tag=NULL, 
\verbosity=0, 
\clear=0, "
let s:commands=join([s:commands,"twiss_analysis"]," ")
call add(s:cparam,s:twiss_analysis)

let s:twiss_output=" 
\filename=NULL, 
\matched=1, 
\output_at_each_step=0, 
\output_before_tune_correction=0, 
\final_values_only=0, 
\statistics=0, 
\radiation_integrals=0, 
\concat_order=3, 
\higher_order_chromaticity=0, 
\higher_order_chromaticity_points=5, 
\higher_order_chromaticity_range=4e-4, 
\chromatic_tune_spread_half_range=0, 
\quick_higher_order_chromaticity=0, 
\beta_x=1, 
\alpha_x=0, 
\eta_x=0, 
\etap_x=0, 
\beta_y=1, 
\alpha_y=0, 
\eta_y=0, 
\etap_y=0, 
\reference_file=NULL, 
\reference_element=NULL, 
\reference_element_occurrence=0, 
\reflect_reference_values=0, 
\cavities_are_drifts_if_matched=1, 
\compute_driving_terms=0, 
\leading_order_driving_terms_only=0, 
\s_dependent_driving_terms_file=NULL, 
\local_dispersion=1, "
let s:commands=join([s:commands,"twiss_output"]," ")
call add(s:cparam,s:twiss_output)

let s:track=" 
\center_on_orbit=0, 
\center_momentum_also=1, 
\offset_by_orbit=0, 
\offset_momentum_also=1, 
\soft_failure=1, 
\stop_tracking_particle_limit=-1, 
\check_beam_structure=0, 
\interrupt_file=...,  "
let s:commands=join([s:commands,"track"]," ")
call add(s:cparam,s:track)

let s:tune_shift_with_amplitude=" 
\turns=2048, 
\x0=1e-6, 
\y0=1e-6, 
\x1=3e-4, 
\y1=3e-4, 
\grid_size=6, 
\lines_only=0, 
\spread_only=0, 
\nux_roi_width=0.02, 
\nuy_roi_width=0.02, 
\scale_down_factor=2, 
\scale_up_factor=1.05, 
\scale_down_limit=0.01, 
\scale_up_limit=1e-4, 
\scaling_iterations=10, 
\use_concatenation=0, 
\verbose=0, 
\order=2, 
\tune_output=NULL, "
let s:commands=join([s:commands,"tune_shift_with_amplitude"]," ")
call add(s:cparam,s:tune_shift_with_amplitude)

let s:vary_element=" 
\index_number=0, 
\index_limit=0, 
\name=NULL, 
\item=NULL, 
\initial=0, 
\final=0, 
\differential=0, 
\multiplicative=0, 
\geometric=0, 
\enumeration_file=NULL, 
\enumeration_column=NULL, "
let s:commands=join([s:commands,"vary_element"]," ")
call add(s:cparam,s:vary_element)




function! elegantcomplete#elegantCommandCheck()
    " backwards search for an elegant command
    execute '?&'
    " read the command characters in line.
    "    col starts at 1, while strings index start at zero
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
        while start > 0 &&  line[start - 1] =~ '\S'
            let start -= 1
        endwhile
        return start
    else
        " find classes matching "a:base"
        let res = []
        let indxcom = elegantcomplete#elegantCommandCheck()
        let lencommands = len(split(s:commands))
        "" add index for debugging only
	"call add(res,indxcom)
	"call add(res,a:base)
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
