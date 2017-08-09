function pdbCommand = getPDBCommandFromState(masterState)
%GETPDBCOMMANDFROMSTATE Computes pdb command from masterState
if(masterState == ExoskeletonState.SHUTTING_DOWN)
    pdbCommand = PDBCommand.SOFT_SHUTDOWN_PDB;
else
    pdbCommand = PDBCommand.NO_COMMAND_PDB;
end
end

