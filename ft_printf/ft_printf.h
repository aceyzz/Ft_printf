/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cedmulle <cedmulle@student.42lausanne.c    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/13 15:19:36 by cedmulle          #+#    #+#             */
/*   Updated: 2023/12/18 13:36:05 by cedmulle         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>
# include <limits.h>

int		ft_printf(const char *format, ...);
/* PRINTERS */
void	print_c(int c, int *count);
void	print_s(char *str, int *count);
void	print_p(size_t nb, int base, int *count);
void	print_n(long long int nbr, int base, int *count, int maj);

#endif