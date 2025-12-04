import argparse

def read_bbvsimpoints(file_path):
    bbvsimpoints = {}
    with open(file_path, 'r') as f:
        for line in f:
            if line.strip():
                simpoint_index, index = map(int, line.strip().split())
                bbvsimpoints[index] = simpoint_index
    return bbvsimpoints

def read_simpoint_bbv(file_path):
    simpoint_bbv = []
    with open(file_path, 'r') as f:
        for line in f:
            if line.startswith('T:'):
                line = line[2:].strip()
                blocks = line.split(' :')
                bb_dict = {int(bb.split(':')[0]): int(bb.split(':')[1]) for bb in blocks}
                simpoint_bbv.append(bb_dict)
    return simpoint_bbv

def read_instmap(file_path):
    instmap = {}
    with open(file_path, 'r') as f:
        for line in f:
            if 'Basic Block:' in line:
                parts = line.split()
                index_of_bb = int(parts[0])
                start_addr, end_addr = line.split('(')[1].split(')')[0].split(', ')
                instmap[index_of_bb] = (start_addr.strip(), end_addr.strip())
    return instmap

def process_files(bbvsimpoints_file, simpoint_bbv_file, instmap_file):
    bbvsimpoints = read_bbvsimpoints(bbvsimpoints_file)
    simpoint_bbv = read_simpoint_bbv(simpoint_bbv_file)
    instmap = read_instmap(instmap_file)
    
    results = {}
    
    for index, simpoint_index in bbvsimpoints.items():
        if simpoint_index < len(simpoint_bbv):
            bb_dict = simpoint_bbv[simpoint_index]
            blocks_in_simpoint = {bb_index: instmap.get(bb_index, "Unknown Basic Block") for bb_index in bb_dict}
            results[simpoint_index] = blocks_in_simpoint
    
    return results

def output_results(results, output_file):
    with open(output_file, 'w') as output_f:
        for simpoint_index, blocks in results.items():
            output_f.write(f"Interval {simpoint_index} 包含的基本块:\n")
            for bb_index, block_desc in blocks.items():
                output_f.write(f"  BB_{bb_index}: {block_desc}\n")

def main():
    parser = argparse.ArgumentParser(description='Process simpoint and basic block files.')
    parser.add_argument('bbvsimpoints_file', type=str, help='Path to the bbvsimpoints file')
    parser.add_argument('simpoint_bbv_file', type=str, help='Path to the simpoint_bbv file')
    parser.add_argument('instmap_file', type=str, help='Path to the instmap file')
    parser.add_argument('output_file', type=str, help='Path to the output file')
    
    args = parser.parse_args()

    results = process_files(args.bbvsimpoints_file, args.simpoint_bbv_file, args.instmap_file)
    output_results(results, args.output_file)

if __name__ == '__main__':
    main()
