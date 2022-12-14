/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mgamil <mgamil@42.student.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/23 15:46:05 by mohazerr          #+#    #+#             */
/*   Updated: 2022/09/27 14:00:22 by mgamil           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>

# define LIST_ARG "cspdiuxX%%"
# define HEX_BASE "0123456789abcdef"
# define U_INT unsigned int

int		ft_printf(const char *format, ...);

int		ft_ptf_putchar(char c);
int		ft_ptf_putnbr(int n, int *count);
int		ft_ptf_putstr(char *s);
int		ft_ptf_uiputnbr(unsigned int n, int *count);
int		ft_ptf_puthex(unsigned long int nbr, char x, int *count);

int		ft_showarg(char c, va_list *list);

#endif