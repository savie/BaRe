package defpackage;

import java.io.Serializable;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class mh0 implements Serializable {
    public final TreeMap a;
    public final transient long b;

    /* JADX WARN: Code duplicated, block: B:33:0x010f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, mh0] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    public mh0(kx8 kx8Var, long j, byte[] bArr, byte[] bArr2) {
        this.a = new TreeMap();
        rx8 rx8Var = kx8Var.b;
        int i = rx8Var.b;
        long one = 1L;
        this.b = (one << kx8Var.c) - one;
        long offset = 0L;
        while (offset < j) {
            TreeMap treeMap = this.a;
            long block = offset >> i;
            long mask = (one << i) - one;
            int index = (int) (offset & mask);
            tq5 tq5Var = new tq5();
            tq5Var.b = block;
            tq5Var.e = index;
            uq5 uq5Var = new uq5(tq5Var);
            int fanout = 1 << i;
            int lastIndex = fanout - 1;

            if (index < lastIndex) {
                lh0 existing = (lh0) treeMap.get(Integer.valueOf(0));
                if (existing == null || index == 0) {
                    treeMap.put(Integer.valueOf(0), new lh0(rx8Var, bArr, bArr2, uq5Var));
                }
                existing = (lh0) this.a.get(Integer.valueOf(0));
                existing.getClass();
                this.a.put(Integer.valueOf(0), new lh0(existing, bArr, bArr2, uq5Var));
            }

            int level = 1;
            long levelBlock = block;
            while (level < kx8Var.d) {
                int levelIndex = (int) (levelBlock & mask);
                long currentOffset = offset;
                long nextBlock = levelBlock >> i;
                tq5 tq5Var2 = new tq5();
                tq5Var2.c = level;
                tq5Var2.b = nextBlock;
                tq5Var2.e = levelIndex;
                uq5 uq5Var2 = new uq5(tq5Var2);

                if (treeMap.get(Integer.valueOf(level)) != null) {
                    if (currentOffset != 0 && currentOffset % (long) Math.pow(fanout, level + 1) == 0) {
                        // Reference smali skips replacement at this boundary.
                    } else if (levelIndex < lastIndex || currentOffset == 0
                            || (currentOffset + one) % (long) Math.pow(fanout, level) != 0) {
                        // Keep the existing node.
                    } else {
                        Integer key = Integer.valueOf(level);
                        lh0 existingLevel = (lh0) this.a.get(key);
                        existingLevel.getClass();
                        this.a.put(key, new lh0(existingLevel, bArr, bArr2, uq5Var2));
                    }
                } else {
                    treeMap.put(Integer.valueOf(level), new lh0(rx8Var, bArr, bArr2, uq5Var2));
                }

                if (levelIndex < lastIndex) {
                    // Reference smali falls through without replacing the node.
                } else if (currentOffset == 0) {
                    // No replacement on the zero-offset boundary.
                } else {
                    long candidate = currentOffset + one;
                    if (candidate % (long) Math.pow(fanout, level) == 0) {
                        Integer key = Integer.valueOf(level);
                        lh0 existingLevel = (lh0) this.a.get(key);
                        existingLevel.getClass();
                        this.a.put(key, new lh0(existingLevel, bArr, bArr2, uq5Var2));
                    }
                }

                level++;
                levelBlock = nextBlock;
            }
            offset += one;
        }
    }

    public final mh0 a(f1 f1Var) {
        mh0 mh0Var = new mh0(this.b);
        TreeMap treeMap = this.a;
        for (Integer num : treeMap.keySet()) {
            lh0 lh0Var = (lh0) treeMap.get(num);
            lh0Var.getClass();
            mh0Var.a.put(num, new lh0(lh0Var, f1Var));
        }
        return mh0Var;
    }

    public mh0(mh0 mh0Var, long j) {
        this.a = new TreeMap();
        for (Integer num : mh0Var.a.keySet()) {
            this.a.put(num, new lh0((lh0) mh0Var.a.get(num)));
        }
        this.b = j;
    }

    public mh0(long j) {
        this.a = new TreeMap();
        this.b = j;
    }
// CI checkpoint: preserve forensic state while waiting for the next gate.
}
