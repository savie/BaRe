package com.jcraft.jsch;

import com.sun.jna.Memory;
import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.BaseTSD;
import com.sun.jna.platform.win32.Kernel32;
import com.sun.jna.platform.win32.User32;
import com.sun.jna.platform.win32.WinBase;
import com.sun.jna.platform.win32.WinDef;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PageantConnector implements AgentConnector {
    public final User32 a;
    public final Kernel32 b;

    public PageantConnector() throws AgentProxyException {
        String property = "";
        byte[] bArr = Util.a;
        try {
            property = System.getProperty("os.name", "");
        } catch (SecurityException unused) {
        }
        if (!property.startsWith("Windows")) {
            throw new AgentProxyException("PageantConnector only available on Windows.");
        }
        try {
            this.a = User32.INSTANCE;
            this.b = Kernel32.INSTANCE;
        } catch (LinkageError e) {
            throw new AgentProxyException(e.toString(), e);
        }
    }

    public static WinUser.COPYDATASTRUCT a(String str) {
        Memory memory = new Memory(str.length() + 1);
        memory.setString(0L, str, "US-ASCII");
        WinUser.COPYDATASTRUCT copydatastruct = new WinUser.COPYDATASTRUCT();
        copydatastruct.dwData = new BaseTSD.ULONG_PTR(2152616122L);
        copydatastruct.cbData = (int) memory.size();
        copydatastruct.lpData = memory;
        copydatastruct.write();
        return copydatastruct;
    }

    public final long b(WinDef.HWND hwnd, WinUser.COPYDATASTRUCT copydatastruct) {
        return this.a.SendMessage(hwnd, 74, (WinDef.WPARAM) null, new WinDef.LPARAM(Pointer.nativeValue(copydatastruct.getPointer()))).longValue();
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final String getName() {
        return "pageant";
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final boolean isAvailable() {
        return this.a.FindWindow("Pageant", "Pageant") != null;
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final void query(Buffer buffer) throws Throwable {
        WinNT.HANDLE handleCreateFileMapping;
        if (buffer.getLength() > 262144) {
            throw new AgentProxyException("Query too large.");
        }
        WinDef.HWND hwndFindWindow = this.a.FindWindow("Pageant", "Pageant");
        if (hwndFindWindow == null) {
            throw new AgentProxyException("Pageant is not runnning.");
        }
        String str = String.format(Locale.ROOT, "PageantRequest%08x", Integer.valueOf(this.b.GetCurrentThreadId()));
        Pointer pointer = null;
        try {
            handleCreateFileMapping = this.b.CreateFileMapping(WinBase.INVALID_HANDLE_VALUE, (WinBase.SECURITY_ATTRIBUTES) null, 4, 0, 262144, str);
            if (handleCreateFileMapping != null) {
                try {
                    if (handleCreateFileMapping != WinBase.INVALID_HANDLE_VALUE) {
                        try {
                            Pointer pointerMapViewOfFile = this.b.MapViewOfFile(handleCreateFileMapping, 2, 0, 0, 0);
                            try {
                                if (pointerMapViewOfFile == null) {
                                    throw new AgentProxyException("Unable to create shared file mapping.");
                                }
                                pointerMapViewOfFile.write(0L, buffer.b, 0, buffer.getLength());
                                WinUser.COPYDATASTRUCT copydatastructA = a(str);
                                long jB = b(hwndFindWindow, copydatastructA);
                                long jLongValue = copydatastructA.dwData.longValue();
                                buffer.d = 0;
                                if (jB == 0) {
                                    throw new AgentProxyException("User32.SendMessage() returned 0 with cds.dwData: " + Long.toHexString(jLongValue));
                                }
                                pointerMapViewOfFile.read(0L, buffer.b, 0, 4);
                                int i = buffer.getInt();
                                if (i <= 0 || i > 262140) {
                                    throw new AgentProxyException("Illegal length: " + i);
                                }
                                buffer.d = 0;
                                buffer.a(i);
                                pointerMapViewOfFile.read(4L, buffer.b, 0, i);
                                this.b.UnmapViewOfFile(pointerMapViewOfFile);
                                this.b.CloseHandle(handleCreateFileMapping);
                                return;
                            } catch (Throwable th) {
                                th = th;
                                pointer = pointerMapViewOfFile;
                                if (pointer != null) {
                                    this.b.UnmapViewOfFile(pointer);
                                }
                                if (handleCreateFileMapping != null) {
                                    this.b.CloseHandle(handleCreateFileMapping);
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            handleCreateFileMapping = handleCreateFileMapping;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            throw new AgentProxyException("Unable to create shared file mapping.");
        } catch (Throwable th4) {
            th = th4;
            handleCreateFileMapping = null;
        }
    }
}
