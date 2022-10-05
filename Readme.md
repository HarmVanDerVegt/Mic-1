A Mic-1 implementation in VHDL. The Mic-1 is a creation of Tanenbaum.

How to create control store:

1. Compile your .mail file into a .mic1 file.
2. Use read36bit.rb to produce a 36 bit/line file. (example: `ruby read36bit.rb a.mic1 > bin36.txt`)
3. Use generate_rom.rb to produce the entities needed. (example: `ruby generate_rom.rb bin36.txt > generated_rom.txt` )
4. Add the generated entities to control_store.vhd, replacing the existing ROM entities.

TODO:
- Implement branching logic
- Implement memory with program (Memory basics are there, figure out how to write the program there. Same method as control store?)
- Finish Z bit in alu (Currently blocks compilation).
- Check correct clock cycle, some signals trigger on rising_edge while they should trigger on falling_edge. (See Timing Mic-1).
- Tie it all together
