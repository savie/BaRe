package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ConfigRepository {
    public static final Config defaultConfig = new AnonymousClass1();
    public static final ConfigRepository nullConfig = new AnonymousClass2();

    /* JADX INFO: renamed from: com.jcraft.jsch.ConfigRepository$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass1 implements Config {
        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getHostname() {
            return null;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final int getPort() {
            return -1;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getUser() {
            return null;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getValue(String str) {
            return null;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String[] getValues(String str) {
            return null;
        }
    }

    /* JADX INFO: renamed from: com.jcraft.jsch.ConfigRepository$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass2 implements ConfigRepository {
        @Override // com.jcraft.jsch.ConfigRepository
        public final Config getConfig(String str) {
            return ConfigRepository.defaultConfig;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface Config {
        String getHostname();

        int getPort();

        String getUser();

        String getValue(String str);

        String[] getValues(String str);
    }

    Config getConfig(String str);
}
