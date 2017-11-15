with open('mux.vhd','w') as f:
  f.write('with a select b <=\n')
  for i in range(128):
    f.write( '\t' )
    f.write( 'd({0}) when '.format(i)+'"'+'{0:b}'.format(i).zfill(7)+'"')
    if i == 127:
      f.write(';\n')
    else:
      f.write(',\n')

