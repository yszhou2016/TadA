$file=$ARGV[0];  # This input file is the output file "outTable_*" of REDItools
open(AA,"$file");

$AG=0;  $sum1=0;
$CT=0;  $sum2=0;
while($line=<AA>)
{  chomp $line;
   @bb=split/\t/,$line;
   #if($bb[4]>10   &&  $bb[0]==$chr)
   {  $ss=$bb[6];
      $ss=~s/\[//; $ss=~s/\]//; $ss=~s/,//g;
      @arr=split/\s+/,$ss;
      $A= $arr[0];  $C =$arr[1];   $G =$arr[2];  $T=$arr[3];
      if($bb[2] eq "A"){  $AG=$AG+$G;    $sum1=$sum1+$bb[4];  }
      if($bb[2] eq "T"){  $AG=$AG+$C;    $sum1=$sum1+$bb[4];  }
      if($bb[2] eq "C"){  $CT=$CT+$T;    $sum2=$sum2+$bb[4];  }
      if($bb[2] eq "G"){  $CT=$CT+$A;    $sum2=$sum2+$bb[4];  }
   }
}
close AA; 


open(BB,">$file.count");
$rate1=100*$AG/$sum1;  $rate2=100*$CT/$sum2;
print  BB  $file,"\t",$rate1,"\t",$rate2,"\n";
close  BB;
