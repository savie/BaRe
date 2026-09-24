.class public Lcom/microsoft/identity/client/helper/BrokerHelperActivity;
.super Landroid/app/Activity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field mManifest:Landroid/widget/TextView;

.field mPackageName:Landroid/widget/TextView;

.field mRedirect:Landroid/widget/TextView;

.field mSignature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSha1SignatureForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0044

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a05d0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mPackageName:Landroid/widget/TextView;

    .line 20
    .line 21
    const p1, 0x7f0a05d3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mSignature:Landroid/widget/TextView;

    .line 31
    .line 32
    const p1, 0x7f0a05d1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mRedirect:Landroid/widget/TextView;

    .line 42
    .line 43
    const p1, 0x7f0a05cd

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mManifest:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mSignature:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->getSignature()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mRedirect:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/PackageHelper;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v2, v0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSha1SignatureForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "UTF-8"

    .line 87
    .line 88
    const-string v3, "msauth://"

    .line 89
    .line 90
    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const-string v5, ""

    .line 95
    .line 96
    if-nez v4, :cond_0

    .line 97
    .line 98
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_0

    .line 103
    .line 104
    :try_start_0
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, "/"

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 135
    .line 136
    const-string v1, "CallerInfo:getBrokerRedirectUrl"

    .line 137
    .line 138
    const-string v2, "Encoding is not supported"

    .line 139
    .line 140
    invoke-static {v1, v5, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mManifest:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->getSignature()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "\"\n            android:path=\"/"

    .line 157
    .line 158
    const-string v3, "\"\n            android:scheme=\"msauth\" />\n    </intent-filter>\n</activity>"

    .line 159
    .line 160
    const-string v4, "<activity android:name=\"com.microsoft.identity.client.BrowserTabActivity\">\n    <intent-filter>\n        <action android:name=\"android.intent.action.VIEW\" />\n        <category android:name=\"android.intent.category.DEFAULT\" />\n        <category android:name=\"android.intent.category.BROWSABLE\" />\n        <data\n            android:host=\""

    .line 161
    .line 162
    invoke-static {v4, v0, v2, v1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->mPackageName:Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
