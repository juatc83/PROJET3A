
SUBROUTINE fct_mvsol(v1,v2,v3,o1,o2,o3,num)
!=========================== DOCUMENTATION ============================= 
!DOCDEBh*    GEO/fct_mvsol *
!
!    NOM
! fct_mvsol(v1,v2,v3,o1,o2,o3,num)
!    DESCRIPTION  
! Definition du mouvement impose  a un solide par son vecteur 
! vitesse de translation et vitesse angulaire
!    AUTEUR 
! GOLAY
!    DATE DE CREATION 
! Septembre 2018
!    ENTREES 
!    num : numero de la fonction
! on a acces au temps global tc
!    SORTIES 
!    v : vitesse de translation
!    o : vitesse angulaire
!    SOURCE
!=========================== DEBUT DES DECLARATIONS ==================== 
!.1-----  Implicit, Use
  USE geo_typ
  IMPLICIT NONE
!.2-----  Declaration
  real(kind=kind(0.d0)) :: v1,v2,v3,o1,o2,o3
  integer               :: num
!=========================== DEBUT DU CODE EXECUTABLE ==================
    v1=0.d0    
    v2=0.d0    
    v3=0.d0    
    o1=0.d0    
    o2=0.d0    
    o3=0.d0    

    select case (num)

!  Mouvement digueLoin
       case(1)
           if(tc.ge.0.45d0)then
                v3 = -0.5d0
           else
                v3 = 0.0d0
           endif
        
!  Mouvement digueMilieu
        case(2)
          if(tc.ge.0.45d0)then
                v2 = -0.6d0
        else 
                v2 = 0.0d0
        endif

!  Mouvement digueProche
        case(3)
          if(tc.ge.0.45d0)then
                v3 = 0.5d0
        else
                v3 = 0.0d0
        endif

!  Erreur
        case default 
         write(*,*)'ERR-FCT_MVSOL Mouvement du solide non defini!!'
          stop

    end select
!===============   FIN DE LA ROUTINE    ====================
END SUBROUTINE fct_mvsol
!DOCFIN
