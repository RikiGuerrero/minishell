/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   clean.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rguerrer <rguerrer@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/16 17:49:15 by rguerrer          #+#    #+#             */
/*   Updated: 2025/02/18 17:09:09 by rguerrer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "inc/minishell.h"

void	reset_std(t_shell *shell)
{
	dup2(shell->infile, STDIN_FILENO);
	dup2(shell->outfile, STDOUT_FILENO);
}

void	close_fds(t_shell *shell)
{
	if (shell->fdin > 0)
		close(shell->fdin);
	if (shell->fdout > 0)
		close(shell->fdout);
}

void	reset_fds(t_shell *shell)
{
	shell->fdin = -1;
	shell->fdout = -1;
	shell->pid = -1;
	shell->fdnextin = -1;
}

void	ft_close_resets(t_shell *shell)
{
	reset_std(shell);
	close_fds(shell);
	reset_fds(shell);
}
