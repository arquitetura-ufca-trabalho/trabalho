verificarVitoria:
    la $t2, tabuleiro
    li $t3, 7

    li $t0, 0 # i = 0

    for_horizontal_i:
        bge $t0, 6, fim_for_horizontal_i

	li $t1, 0 # j = 0

    fim_for_horizontal_i:

