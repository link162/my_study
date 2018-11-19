/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   header.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ybuhai <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/17 14:19:07 by ybuhai            #+#    #+#             */
/*   Updated: 2018/11/19 13:21:00 by ybuhai           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft/libft.h"

typedef struct		s_tetris
{
	struct s_tetris	*next;
	void			*data;
}					t_tetris;

void				t_tetris	*ft_create_elem(void *data);
void				ft_list_push_back(t_tetris **begin_list, void *data);
void				ft_list_push_front(t_tetris **begin_list, void *data);
t_tetris			*ft_list_last(t_tetris *begin_list);
int					ft_list_size(t_tetris *begin_list);
