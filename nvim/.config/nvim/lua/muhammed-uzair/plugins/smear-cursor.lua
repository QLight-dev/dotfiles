return {
	"sphamba/smear-cursor.nvim",

	opts = {
		smear_between_buffers = true,

		-- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
		smear_between_neighbor_lines = true,

		scroll_buffer_space = true,

		legacy_computing_symbols_support = false,
    distance_stop_animating_vertical_bar = 0.1,

		smear_insert_mode = true,
	},
}
