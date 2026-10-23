.class public final Lj69;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le59;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj69;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public G:Z

.field public H:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm10;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm10;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lj69;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "http://localhost"

    .line 5
    .line 6
    iput-object v0, p0, Lj69;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lj69;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lj69;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lj69;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lj69;->r:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p6, p0, Lj69;->y:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p7, p0, Lj69;->H:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p6, 0x1

    .line 21
    iput-boolean p6, p0, Lj69;->p:Z

    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p7

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p7, :cond_1

    .line 29
    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p7

    .line 34
    if-eqz p7, :cond_1

    .line 35
    .line 36
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p7

    .line 40
    if-nez p7, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "idToken, accessToken and authCode cannot all be null"

    .line 44
    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    :goto_0
    invoke-static {p3}, Lly8;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lj69;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lj69;->f:Ljava/lang/String;

    .line 55
    .line 56
    new-instance p7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string v2, "&"

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    const-string v1, "id_token="

    .line 70
    .line 71
    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    const-string p1, "access_token="

    .line 87
    .line 88
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    const-string p1, "identifier=null&"

    .line 104
    .line 105
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    const-string p1, "oauth_token_secret="

    .line 115
    .line 116
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_6

    .line 130
    .line 131
    const-string p1, "code="

    .line 132
    .line 133
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_6
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_7

    .line 147
    .line 148
    const-string p1, "nonce="

    .line 149
    .line 150
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_7
    const-string p1, "providerId="

    .line 160
    .line 161
    invoke-static {p7, p1, p3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lj69;->k:Ljava/lang/String;

    .line 166
    .line 167
    iput-boolean p6, p0, Lj69;->q:Z

    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lj69;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lj69;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lj69;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {p1, v1, v0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    iget-object v2, p0, Lj69;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    iget-object v2, p0, Lj69;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    iget-object v2, p0, Lj69;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    iget-object v2, p0, Lj69;->k:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    iget-object v2, p0, Lj69;->n:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lj69;->p:Z

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    invoke-static {p1, v2, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lj69;->q:Z

    .line 68
    .line 69
    const/16 v2, 0xb

    .line 70
    .line 71
    invoke-static {p1, v2, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    const/16 v0, 0xc

    .line 78
    .line 79
    iget-object v2, p0, Lj69;->r:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/16 v0, 0xd

    .line 85
    .line 86
    iget-object v2, p0, Lj69;->t:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 v0, 0xe

    .line 92
    .line 93
    iget-object v2, p0, Lj69;->x:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0xf

    .line 99
    .line 100
    iget-object v2, p0, Lj69;->y:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1, v0, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v0, p0, Lj69;->G:Z

    .line 106
    .line 107
    const/16 v2, 0x10

    .line 108
    .line 109
    invoke-static {p1, v2, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    const/16 v0, 0x11

    .line 116
    .line 117
    iget-object p0, p0, Lj69;->H:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p1, v0, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lj69;->x:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lj69;->t:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "autoCreate"

    .line 11
    .line 12
    iget-boolean v4, p0, Lj69;->q:Z

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v3, "returnSecureToken"

    .line 18
    .line 19
    iget-boolean v4, p0, Lj69;->p:Z

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lj69;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v4, "idToken"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v3, p0, Lj69;->k:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const-string v4, "postBody"

    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v3, p0, Lj69;->y:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    const-string v4, "tenantId"

    .line 47
    .line 48
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v3, p0, Lj69;->H:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const-string v4, "pendingToken"

    .line 56
    .line 57
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_4

    .line 65
    .line 66
    const-string v3, "sessionId"

    .line 67
    .line 68
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const-string v3, "requestUri"

    .line 76
    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lj69;->a:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_0
    const-string v0, "returnIdpCredential"

    .line 91
    .line 92
    iget-boolean p0, p0, Lj69;->G:Z

    .line 93
    .line 94
    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method
