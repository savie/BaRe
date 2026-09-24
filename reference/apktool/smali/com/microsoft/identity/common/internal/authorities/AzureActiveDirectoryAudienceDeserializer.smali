.class public Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "type"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, -0x1

    .line 25
    sparse-switch p2, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_0
    const-string p2, "AzureADandPersonalMicrosoftAccount"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x3

    .line 39
    goto :goto_0

    .line 40
    :sswitch_1
    const-string p2, "AzureADMyOrg"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x2

    .line 50
    goto :goto_0

    .line 51
    :sswitch_2
    const-string p2, "AzureADMultipleOrgs"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :sswitch_3
    const-string p2, "PersonalMicrosoftAccount"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_0
    const-string p1, "AzureActiveDirectoryAudienceDeserializer:deserialize"

    .line 73
    .line 74
    packed-switch v0, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 78
    .line 79
    const-string p2, "Type: Unknown"

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-class p1, Lcom/microsoft/identity/common/internal/authorities/UnknownAudience;

    .line 85
    .line 86
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_0
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 94
    .line 95
    const-string p2, "Type: AzureADandPersonalMicrosoftAccount"

    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AllAccounts;

    .line 101
    .line 102
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 110
    .line 111
    const-string p2, "Type: AzureADMyOrg"

    .line 112
    .line 113
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AccountsInOneOrganization;

    .line 117
    .line 118
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_2
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 126
    .line 127
    const-string p2, "Type: AzureADMultipleOrgs"

    .line 128
    .line 129
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AnyOrganizationalAccount;

    .line 133
    .line 134
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_3
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 142
    .line 143
    const-string p2, "Type: PersonalMicrosoftAccount"

    .line 144
    .line 145
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AnyPersonalAccount;

    .line 149
    .line 150
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_4
    const/4 p0, 0x0

    .line 158
    return-object p0

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x6e6c4821 -> :sswitch_3
        0x7716c431 -> :sswitch_2
        0x77ece1e6 -> :sswitch_1
        0x7c104ea4 -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
