
Currently Loaded Modules:
  1) gcc/11.4.0      3) cuda/11.8.0         5) slurm-env/0.1   7) r/4.3.2
  2) openmpi/4.1.6   4) cue-login-env/1.0   6) default-s11

 

Warning message:
In parallel::mclapply(parquet_files, process_parquet, mc.cores = nc) :
  scheduled cores 3, 15, 17, 22, 41, 50 did not deliver results, all values of the jobs will be affected

real	22m38.684s
user	371m45.451s
sys	9m3.651s
slurmstepd: error: Detected 6 oom_kill events in StepId=3567080.batch. Some of the step tasks have been OOM Killed.
