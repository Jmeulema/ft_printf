/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_hexa.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmeulema <jmeulema@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/06 16:36:30 by jmeulema          #+#    #+#             */
/*   Updated: 2022/08/07 13:42:23 by jmeulema         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Includes/ft_printf.h"

static int	ft_hexa_len(unsigned int nb)
{
	int	len;

	len = 0;
	if (nb == 0)
		return (1);
	while (nb != 0)
	{
		nb /= 16;
		len++;
	}
	return (len);
}

static void	ft_put_hexa(unsigned int nb, const char format)
{
	if (nb >= 16)
	{
		ft_put_hexa(nb / 16, format);
		ft_put_hexa(nb % 16, format);
	}
	else
	{
		if (nb <= 9)
			ft_putchar(nb + '0');
		else
		{
			if (format == 'x')
				ft_putchar(nb - 10 + 'a');
			if (format == 'X')
				ft_putchar(nb - 10 + 'A');
		}
	}
}

int	ft_print_hexa(unsigned int nb, const char format)
{
	if (nb == 0)
		write (1, "0", 1);
	else
		ft_put_hexa(nb, format);
	return (ft_hexa_len(nb));
}
