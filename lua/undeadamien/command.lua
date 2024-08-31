local function create_cpp_class()
	local file_name = vim.fn.expand("%:t")
	local class_name = vim.fn.expand("%:t:r")
	local define_guard = string.upper(class_name) .. "_HPP"
	local class_template = string.format(
		[[
#ifndef %s
#define %s

class %s {
public:
%s();
~%s();
protected:
private:
};

#endif
]],
		define_guard,
		define_guard,
		class_name,
		class_name,
		class_name,
		define_guard
	)

	vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(class_template, "\n"))
	vim.cmd("write")
	vim.api.nvim_command("silent Stdheader")
	vim.api.nvim_command("silent !clang-format --style=google -i %")
	vim.cmd("edit!")
end

vim.api.nvim_create_user_command("CppClass", create_cpp_class, {})
