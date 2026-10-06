package com.microsoft.identity.common.java.commands.parameters;

import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.IAccountRecord;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import defpackage.dj7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RemoveAccountCommandParameters extends CommandParameters {
    private final IAccountRecord account;
    private final List<BrowserDescriptor> browserSafeList;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class RemoveAccountCommandParametersBuilder<C extends RemoveAccountCommandParameters, B extends RemoveAccountCommandParametersBuilder<C, B>> extends CommandParameters.CommandParametersBuilder<C, B> {
        private AccountRecord account;
        private List<BrowserDescriptor> browserSafeList;

        public final RemoveAccountCommandParametersBuilder account(AccountRecord accountRecord) {
            this.account = accountRecord;
            return (RemoveAccountCommandParametersBuilderImpl) this;
        }

        public final B browserSafeList(List<BrowserDescriptor> list) {
            this.browserSafeList = list;
            return (RemoveAccountCommandParametersBuilderImpl) this;
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public abstract C build();

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final String toString() {
            StringBuilder sb = new StringBuilder("RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder(super=");
            sb.append(super.toString());
            sb.append(", account=");
            sb.append(this.account);
            sb.append(", browserSafeList=");
            return dj7.o(sb, this.browserSafeList, ")");
        }
    }

    public RemoveAccountCommandParameters(RemoveAccountCommandParametersBuilder<?, ?> removeAccountCommandParametersBuilder) {
        super(removeAccountCommandParametersBuilder);
        this.account = ((RemoveAccountCommandParametersBuilder) removeAccountCommandParametersBuilder).account;
        this.browserSafeList = ((RemoveAccountCommandParametersBuilder) removeAccountCommandParametersBuilder).browserSafeList;
    }

    public static RemoveAccountCommandParametersBuilder<?, ?> builder() {
        return new RemoveAccountCommandParametersBuilderImpl();
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean canEqual(CommandParameters commandParameters) {
        return commandParameters instanceof RemoveAccountCommandParameters;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RemoveAccountCommandParameters)) {
            return false;
        }
        RemoveAccountCommandParameters removeAccountCommandParameters = (RemoveAccountCommandParameters) obj;
        if (!super.equals(obj)) {
            return false;
        }
        IAccountRecord iAccountRecord = removeAccountCommandParameters.account;
        IAccountRecord iAccountRecord2 = this.account;
        if (iAccountRecord2 == null) {
            if (iAccountRecord != null) {
                return false;
            }
        } else if (!iAccountRecord2.equals(iAccountRecord)) {
            return false;
        }
        List<BrowserDescriptor> list = this.browserSafeList;
        ArrayList arrayList = list == null ? null : new ArrayList(list);
        List<BrowserDescriptor> list2 = removeAccountCommandParameters.browserSafeList;
        ArrayList arrayList2 = list2 != null ? new ArrayList(list2) : null;
        if (arrayList == null) {
            return arrayList2 == null;
        }
        return arrayList.equals(arrayList2);
    }

    public final IAccountRecord getAccount() {
        return this.account;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final int hashCode() {
        int iHashCode = super.hashCode() * 59;
        IAccountRecord iAccountRecord = this.account;
        int iHashCode2 = iHashCode + (iAccountRecord == null ? 43 : iAccountRecord.hashCode());
        List<BrowserDescriptor> list = this.browserSafeList;
        ArrayList arrayList = list == null ? null : new ArrayList(list);
        return (iHashCode2 * 59) + (arrayList != null ? arrayList.hashCode() : 43);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class RemoveAccountCommandParametersBuilderImpl extends RemoveAccountCommandParametersBuilder<RemoveAccountCommandParameters, RemoveAccountCommandParametersBuilderImpl> {
        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters build() {
            return new RemoveAccountCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final RemoveAccountCommandParameters build() {
            return new RemoveAccountCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters.CommandParametersBuilder self() {
            return this;
        }
    }
}
