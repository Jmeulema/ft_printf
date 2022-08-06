/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmeulema <jmeulema@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/27 12:35:33 by jmeulema          #+#    #+#             */
/*   Updated: 2022/08/06 18:20:28 by jmeulema         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdlib.h>
# include <stdarg.h>

int		ft_printf(const char *format, ...);
int		ft_print_hex(unsigned int nb, const char format);
int		ft_printnbr(int nbr);
int		ft_printstr(const char *s1);
int		ft_putchar(char c);
char	*ft_itoa(int n);

#endif