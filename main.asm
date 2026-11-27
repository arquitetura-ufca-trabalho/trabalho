verificarVitoria:
    la $t2, tabuleiro
    li $t3, 7

    # verifica horizontais
    li $t0, 0 # i = 0

    for_horizontal_i:
        bge $t0, 6, fim_for_horizontal_i

	li $t1, 0 # j = 0

        for_horizontal_j:
            bgt $t1, 3, fim_for_horizontal_j

            # endereço de tabuleiro
            mul $t4, $t0, $t3
            add $t4, $t4, $t1
            add $t4, $t4, $t2

            # if
            lbu $t5, 0($t4)
            bne $t5, $a0, incremento_horizontal_j

            lbu $t5, 1($t4)
            bne $t5, $a0, incremento_horizontal_j

            lbu $t5, 2($t4)
            bne $t5, $a0, incremento_horizontal_j

            lbu $t5, 3($t4)
            bne $t5, $a0, incremento_horizontal_j

            j return_vitorias

            incremento_horizontal_j:
                addi $t1, $t1, 1 # j++
                j for_horizontal_j

            fim_for_horizontal_j:
            addi $t0, t0, 1 # i++
            j for_horizontal_i

    fim_for_horizontal_i:

