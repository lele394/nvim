-- controls auto comment, check repo for more infos

return {

    'KarimElghamry/vim-auto-comment',
    config = function ()
           
    local inline_comment_dict = {}
		inline_comment_dict['//'] = {"js", "ts", "cpp", "c", "dart"}
		inline_comment_dict['#'] = {'py', 'sh'}
		inline_comment_dict['"'] = {'vim'}	
		inline_comment_dict['--'] = {'lua'}
	


    vim.g.inline_comment_dict = inline_comment_dict
        


   end
}
