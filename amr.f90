!  Cas particulier du modele de SaintVenant : 
! utilisation eventuellement de la bathymetrie dependant du temps
write(*,*)'*******************',imodel_phy,bathy_amr !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     if(imodel_phy.eq.10)then

         write(*,*) '============================================================='
         write(*,*) 'Mise a jour de la bathy'

         tc_local = calc_out%tmin

         do i=1,calc_out%msh%nb_cell

          ! ==================== 1er bathy ====================
          ! c'est ok, on évite d'y toucher maintenant
            if(      calc_out%msh%list_cell(i)%center%x.ge.0.9d0 &
                .and.calc_out%msh%list_cell(i)%center%x.le.1.3d0 & 
                .and.calc_out%msh%list_cell(i)%center%y.ge.0.0d0 &
                .and.calc_out%msh%list_cell(i)%center%y.le.1.45d0 )then

                if (tc_local.ge.0.45d0)then  
     if (calc_out%msh%list_cell(i)%center%y.ge.1.675d0 - 0.5d0*tc_local)then
                     calc_out%msh%list_cell(i)%w%vprim%v(5) = 0.0d0
                  endif 
                endif
             !call Prim2Bal(calc_out%msh%list_cell(i)%w)
            endif
            
          ! ==================== 2eme bathy ====================
            if(      calc_out%msh%list_cell(i)%center%x.ge.0.9d0 &
              .and.calc_out%msh%list_cell(i)%center%x.le.1.3d0 & 
              .and.calc_out%msh%list_cell(i)%center%y.ge.1.55d0 &
              .and.calc_out%msh%list_cell(i)%center%y.le.3.0d0 )then

                if (tc_local.ge.0.45d0)then  
     if (calc_out%msh%list_cell(i)%center%y.le.1.325d0 + 0.5d0*tc_local)then
                    calc_out%msh%list_cell(i)%w%vprim%v(5) = 0.0d0
                  endif 
                endif
              !call Prim2Bal(calc_out%msh%list_cell(i)%w)
            endif

         enddo
         write(*,*) 'Mise a jour de la bathy terminee'
         write(*,*) '============================================================='
     endif

