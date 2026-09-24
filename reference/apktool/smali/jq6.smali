.class public final Ljq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsr9;
.implements Lvc5;
.implements Lwg7;
.implements Lug7;
.implements Lkw5;
.implements Ler5;
.implements Lls5;
.implements Lji3;
.implements Ldz7;
.implements Lw23;
.implements Lyi6;
.implements Llk8;
.implements Lj58;
.implements Ldh5;
.implements Lxe9;
.implements Lt1a;


# static fields
.field public static c:Ljq6;

.field public static final d:Lkq6;

.field public static final e:[B

.field public static final f:[B


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lkq6;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct/range {v0 .. v5}, Lkq6;-><init>(IZZII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ljq6;->d:Lkq6;

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v0, Ljq6;->e:[B

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    sput-object v0, Ljq6;->f:[B

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :array_1
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 28
    iput p1, p0, Ljq6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc63;Ld80;I)V
    .locals 0

    .line 24
    iput p3, p0, Ljq6;->a:I

    iput-object p2, p0, Ljq6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc79;)V
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    iput v0, p0, Ljq6;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ll79;->a:[B

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p0, p1, Lc79;->a:Ljq6;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "output"

    .line 18
    .line 19
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public constructor <init>(Lhd4;Ljava/lang/reflect/Type;)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, Ljq6;->a:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    iput p2, p0, Ljq6;->a:I

    iput-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq63;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Ljq6;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lty3;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Ljq6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object p1, p1, Lty3;->a:Ljava/lang/Object;

    check-cast p1, Lma9;

    .line 26
    iput-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    return-void
.end method

.method public static B()Ljq6;
    .locals 6

    .line 1
    invoke-static {}, Ll73;->H()Ljava/security/Provider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string v2, "XDH"

    .line 9
    .line 10
    invoke-static {v2, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljq6;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, v0, v4}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v2, 0xff

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    array-length v4, v2

    .line 44
    const/16 v5, 0x30

    .line 45
    .line 46
    if-ne v4, v5, :cond_3

    .line 47
    .line 48
    sget-object v4, Ljq6;->e:[B

    .line 49
    .line 50
    invoke-static {v4, v2}, Lau9;->b([B[B)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/16 v4, 0x10

    .line 57
    .line 58
    array-length v5, v2

    .line 59
    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    array-length v2, v0

    .line 71
    const/16 v4, 0x2c

    .line 72
    .line 73
    if-ne v2, v4, :cond_1

    .line 74
    .line 75
    sget-object v2, Ljq6;->f:[B

    .line 76
    .line 77
    invoke-static {v2, v0}, Lau9;->b([B[B)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    const/16 v1, 0xc

    .line 84
    .line 85
    array-length v2, v0

    .line 86
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_0
    const-string v0, "Invalid encoded public key prefix"

    .line 91
    .line 92
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_1
    const-string v0, "Invalid encoded public key length"

    .line 97
    .line 98
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_2
    const-string v0, "Invalid encoded private key prefix"

    .line 103
    .line 104
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_3
    const-string v0, "Invalid encoded private key length"

    .line 109
    .line 110
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_4
    const-string v0, "Conscrypt is not available."

    .line 115
    .line 116
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v1
.end method

.method public static declared-synchronized i()Ljq6;
    .locals 3

    .line 1
    const-class v0, Ljq6;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ljq6;->c:Ljq6;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljq6;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Ljq6;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Ljq6;->c:Ljq6;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Ljq6;->c:Ljq6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "LegacySevenZipArchive: Empty archive entry name"

    .line 3
    .line 4
    if-eqz p0, :cond_8

    .line 5
    .line 6
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_8

    .line 11
    .line 12
    const/16 v2, 0x5c

    .line 13
    .line 14
    invoke-static {p0, v2}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_7

    .line 19
    .line 20
    const/16 v2, 0x2f

    .line 21
    .line 22
    invoke-static {p0, v2}, Lnq7;->y0(Ljava/lang/CharSequence;C)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_6

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    new-array v4, v3, [C

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    aput-char v2, v4, v5

    .line 33
    .line 34
    invoke-static {p0, v4}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-array v3, v3, [C

    .line 39
    .line 40
    aput-char v2, v3, v5

    .line 41
    .line 42
    const/4 v2, 0x6

    .line 43
    invoke-static {v4, v3, v2}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, v4

    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-lez v6, :cond_0

    .line 74
    .line 75
    const-string v6, "."

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_0

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/String;

    .line 115
    .line 116
    const-string v4, ".."

    .line 117
    .line 118
    invoke-static {v2, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const-string v1, "LegacySevenZipArchive: Parent path traversal is not allowed: "

    .line 126
    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_4
    :goto_2
    const/4 v7, 0x0

    .line 136
    const/16 v8, 0x3e

    .line 137
    .line 138
    const-string v4, "/"

    .line 139
    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_5
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_6
    const-string v1, "LegacySevenZipArchive: Absolute archive entry path is not allowed: "

    .line 152
    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_7
    const-string v1, "LegacySevenZipArchive: Backslash path separators are not allowed: "

    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_8
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v0
.end method

.method public static x(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public A(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lqg6;

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->J(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    .line 13
    add-int/2addr p1, p0

    .line 14
    return p1
.end method

.method public C(ILjava/lang/Object;Le89;)V
    .locals 2

    .line 1
    check-cast p2, Lo69;

    .line 2
    .line 3
    iget-object v0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc79;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, p1, v1}, Lc79;->p(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lo69;->a(Le89;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lc79;->o(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3, p2, p0}, Le89;->c(Ljava/lang/Object;Ljq6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public a([B[B)[B
    .locals 6

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/security/Provider;

    .line 4
    .line 5
    const-string v0, "XDH"

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, p1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/16 v4, 0x20

    .line 14
    .line 15
    if-ne v2, v4, :cond_1

    .line 16
    .line 17
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 18
    .line 19
    sget-object v5, Ljq6;->e:[B

    .line 20
    .line 21
    filled-new-array {v5, p1}, [[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    array-length v2, p2

    .line 37
    if-ne v2, v4, :cond_0

    .line 38
    .line 39
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 40
    .line 41
    sget-object v3, Ljq6;->f:[B

    .line 42
    .line 43
    filled-new-array {v3, p2}, [[B

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lz85;->N([[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {v2, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v0, p0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p2, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_0
    const-string p0, "Invalid X25519 public key"

    .line 75
    .line 76
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_1
    const-string p0, "Invalid X25519 private key"

    .line 81
    .line 82
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v3
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ljq6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lbt9;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    new-instance v0, Lij9;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Lij9;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lvu9;

    .line 22
    .line 23
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lta6;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v3, p1, Lvu9;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v3, Lab9;->a:I

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2, v2}, Lta6;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x2

    .line 48
    invoke-virtual {p1, p2, p0}, Lvu9;->a(Landroid/os/Parcel;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :sswitch_0
    check-cast p1, Lbt9;

    .line 53
    .line 54
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 55
    .line 56
    new-instance v0, Lqh9;

    .line 57
    .line 58
    invoke-direct {v0, p2}, Lqh9;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lvu9;

    .line 66
    .line 67
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lqa6;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v3, p1, Lvu9;->b:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget v3, Lab9;->a:I

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 83
    .line 84
    .line 85
    if-nez p0, :cond_0

    .line 86
    .line 87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2, v2}, Lqa6;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p1, p2, v1}, Lvu9;->a(Landroid/os/Parcel;I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :sswitch_1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Lm91;

    .line 104
    .line 105
    check-cast p1, Lkm6;

    .line 106
    .line 107
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 108
    .line 109
    new-instance v0, Lje4;

    .line 110
    .line 111
    invoke-direct {v0, p2}, Lje4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lw84;

    .line 119
    .line 120
    check-cast p1, Lu84;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const-string v3, "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService"

    .line 127
    .line 128
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget v3, Lya9;->a:I

    .line 132
    .line 133
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2, v2}, Lm91;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 140
    .line 141
    .line 142
    const/4 p0, 0x4

    .line 143
    invoke-virtual {p1, p2, p0}, Lu84;->a(Landroid/os/Parcel;I)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Exception;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    :cond_1
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Exception;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public construct()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhd4;

    .line 4
    .line 5
    invoke-interface {p0}, Lhd4;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public d(Lfc5;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lfo;->r(Lfc5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Ldt;->Y:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lil0;->A(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->p0()Los;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Los;->b:Lx00;

    .line 18
    .line 19
    iget-object v2, v2, Lx00;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ltf2;

    .line 22
    .line 23
    iget-object v2, v2, Ltf2;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-wide/16 v3, 0x12c

    .line 36
    .line 37
    invoke-static {v2, v3, v4}, Lsz8;->F(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->l0()Lws;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 57
    .line 58
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iput-boolean v1, v2, Ltt;->k:Z

    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object v4, v3

    .line 91
    check-cast v4, Lji;

    .line 92
    .line 93
    const v32, 0x7ffffff

    .line 94
    .line 95
    .line 96
    const/16 v33, 0x0

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    const/4 v15, 0x0

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    const/16 v18, 0x0

    .line 114
    .line 115
    const/16 v19, 0x0

    .line 116
    .line 117
    const/16 v20, 0x0

    .line 118
    .line 119
    const/16 v21, 0x0

    .line 120
    .line 121
    const/16 v22, 0x0

    .line 122
    .line 123
    const/16 v23, 0x0

    .line 124
    .line 125
    const/16 v24, 0x0

    .line 126
    .line 127
    const/16 v25, 0x0

    .line 128
    .line 129
    const/16 v26, 0x0

    .line 130
    .line 131
    const/16 v27, 0x0

    .line 132
    .line 133
    const/16 v28, 0x0

    .line 134
    .line 135
    const/16 v29, 0x0

    .line 136
    .line 137
    const/16 v30, 0x0

    .line 138
    .line 139
    const/16 v31, 0x0

    .line 140
    .line 141
    invoke-static/range {v4 .. v33}, Lji;->copy$default(Lji;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lji;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    iput-object v1, v2, Ltt;->m:Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {v2}, Ltt;->l()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ldt;->Y:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v1, v2}, Lsz8;->e0(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->p0()Los;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Los;->b:Lx00;

    .line 34
    .line 35
    iget-object v1, v1, Lx00;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ltf2;

    .line 38
    .line 39
    iget-object v1, v1, Ltf2;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iput-boolean v0, p0, Ltt;->k:Z

    .line 51
    .line 52
    invoke-virtual {p0, v0, v0}, Ltt;->k(ZZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwj6;

    .line 4
    .line 5
    iget-object v0, p0, Lwj6;->i:Lu00;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "Auth token changed, triggering auth token refresh"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v3, v4, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lwj6;->c:Lwz5;

    .line 17
    .line 18
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 19
    .line 20
    const-string v2, "Auth token refreshed."

    .line 21
    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v4, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lwz5;->q:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lwz5;->j(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string v0, "Must be connected to send unauth."

    .line 46
    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p1, v0, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lwz5;->q:Ljava/lang/String;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move p1, v1

    .line 59
    :goto_0
    const-string v0, "Auth token must not be set."

    .line 60
    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p1, v0, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "unauth"

    .line 67
    .line 68
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1, v0, v4}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lid4;

    .line 4
    .line 5
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lga6;

    .line 8
    .line 9
    new-instance v0, Lsy2;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lsy2;-><init>(Lga6;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public h(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lqg6;

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->P(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    sub-int/2addr p1, p0

    .line 14
    return p1
.end method

.method public k()Z
    .locals 5

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lq63;

    .line 4
    .line 5
    const-string v0, "LegacySevenZipArchive: Unable to open archive channel: "

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {p0, v1}, Lq63;->l(I)Lc73;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    :try_start_1
    invoke-static {}, Leb7;->b()Ldb7;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object v0, v2, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 19
    .line 20
    iput-object v0, p0, Ldb7;->t:Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    invoke-virtual {p0}, Ldb7;->K()Leb7;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 26
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, p0, Leb7;->c:Lg40;

    .line 29
    .line 30
    iget-object v3, v3, Lg40;->g:[Lwa7;

    .line 31
    .line 32
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object v4, v3

    .line 54
    check-cast v4, Lwa7;

    .line 55
    .line 56
    iget-boolean v4, v4, Lwa7;->c:Z

    .line 57
    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/4 v3, 0x0

    .line 64
    :goto_0
    check-cast v3, Lwa7;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Leb7;->j(Lwa7;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception v3

    .line 80
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    :catchall_2
    move-exception v4

    .line 82
    :try_start_6
    invoke-static {v0, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    :cond_2
    :goto_1
    :try_start_7
    invoke-virtual {p0}, Leb7;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    :try_start_8
    invoke-virtual {v2}, Lc73;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 91
    .line 92
    .line 93
    return p0

    .line 94
    :catchall_3
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :goto_2
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 97
    :catchall_4
    move-exception v3

    .line 98
    :try_start_a
    invoke-static {p0, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 102
    :goto_3
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 103
    :catchall_5
    move-exception v0

    .line 104
    :try_start_c
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 130
    :catch_0
    return v1
.end method

.method public l()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 14
    .line 15
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 16
    .line 17
    iget-object v1, v0, Lr20;->q:Lfm7;

    .line 18
    .line 19
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, p0}, Lr20;->l(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "mAdapter"

    .line 26
    .line 27
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 4

    .line 1
    iget-object p1, p2, Ltv8;->a:Lqv8;

    .line 2
    .line 3
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ltv8;

    .line 8
    .line 9
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ltv8;

    .line 16
    .line 17
    invoke-virtual {p2}, Ltv8;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lqv8;->r()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_2
    if-ge v1, v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lhw1;

    .line 73
    .line 74
    iget-object v2, v2, Lhw1;->a:Lew1;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lqv8;->r()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object p2
.end method

.method public o()I
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public p([B)Z
    .locals 4

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [Lkw5;

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-interface {v3, p1}, Lkw5;->p([B)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public q()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljq6;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public r(Lfc5;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfo;

    .line 4
    .line 5
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x6c

    .line 14
    .line 15
    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public read([B)Lev6;
    .locals 4

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [Lkw5;

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    aget-object v2, p0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkw5;->p([B)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {v2, p1}, Lkw5;->read([B)Lev6;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "Unknown packet format received."

    .line 26
    .line 27
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sub-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lc00;

    .line 4
    .line 5
    new-instance v0, Lob2;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lob2;-><init>(Lli3;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p2}, Lc00;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    return-object p0
.end method

.method public u(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lfo0;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public w(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 1

    .line 1
    new-instance p1, Lwl6;

    .line 2
    .line 3
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/content/res/Resources;

    .line 6
    .line 7
    sget-object v0, Lfe8;->b:Lfe8;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0}, Lwl6;-><init>(Landroid/content/res/Resources;Lch5;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->j0()Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/Context;

    .line 4
    .line 5
    sget-object v0, Lje9;->f:Ljava/lang/Object;

    .line 6
    .line 7
    const-class v0, Lyc9;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lyc9;->a:Lve9;

    .line 11
    .line 12
    if-nez v1, :cond_b

    .line 13
    .line 14
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "eng"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "userdebug"

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :cond_0
    :goto_0
    const-string v1, "dev-keys"

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const-string v1, "test-keys"

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object p0, Lre9;->a:Lre9;

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 71
    .line 72
    .line 73
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 79
    .line 80
    const-string v4, "phenotype_hermetic"

    .line 81
    .line 82
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "overrides.txt"

    .line 87
    .line 88
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    new-instance v4, Lwe9;

    .line 98
    .line 99
    invoke-direct {v4, v3}, Lwe9;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    sget-object v4, Lre9;->a:Lre9;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :catch_0
    move-exception v3

    .line 110
    const-string v4, "HermeticFileOverrides"

    .line 111
    .line 112
    const-string v5, "no data dir"

    .line 113
    .line 114
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    sget-object v4, Lre9;->a:Lre9;

    .line 118
    .line 119
    :goto_2
    invoke-virtual {v4}, Lve9;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_a

    .line 124
    .line 125
    invoke-virtual {v4}, Lve9;->a()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    .line 130
    .line 131
    new-instance v5, Ljava/io/InputStreamReader;

    .line 132
    .line 133
    new-instance v6, Ljava/io/FileInputStream;

    .line 134
    .line 135
    move-object v7, v3

    .line 136
    check-cast v7, Ljava/io/File;

    .line 137
    .line 138
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    .line 146
    .line 147
    :try_start_5
    new-instance v5, Ldg7;

    .line 148
    .line 149
    invoke-direct {v5, v2}, Ldg7;-><init>(I)V

    .line 150
    .line 151
    .line 152
    new-instance v6, Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 155
    .line 156
    .line 157
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    const-string v8, " "

    .line 164
    .line 165
    const/4 v9, 0x3

    .line 166
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    array-length v10, v8

    .line 171
    if-eq v10, v9, :cond_5

    .line 172
    .line 173
    const-string v8, "HermeticFileOverrides"

    .line 174
    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v10, "Invalid: "

    .line 181
    .line 182
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :catchall_2
    move-exception p0

    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_5
    aget-object v7, v8, v2

    .line 200
    .line 201
    new-instance v9, Ljava/lang/String;

    .line 202
    .line 203
    invoke-direct {v9, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v7, 0x1

    .line 207
    aget-object v7, v8, v7

    .line 208
    .line 209
    new-instance v10, Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const/4 v10, 0x2

    .line 219
    aget-object v11, v8, v10

    .line 220
    .line 221
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Ljava/lang/String;

    .line 226
    .line 227
    if-nez v11, :cond_7

    .line 228
    .line 229
    aget-object v8, v8, v10

    .line 230
    .line 231
    new-instance v10, Ljava/lang/String;

    .line 232
    .line 233
    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    const/16 v12, 0x400

    .line 245
    .line 246
    if-lt v8, v12, :cond_6

    .line 247
    .line 248
    if-ne v11, v10, :cond_7

    .line 249
    .line 250
    :cond_6
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    :cond_7
    invoke-virtual {v5, v9}, Ldg7;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-nez v8, :cond_8

    .line 258
    .line 259
    new-instance v8, Ldg7;

    .line 260
    .line 261
    invoke-direct {v8, v2}, Ldg7;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v9, v8}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_8
    invoke-virtual {v5, v9}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    check-cast v8, Ldg7;

    .line 272
    .line 273
    invoke-virtual {v8, v7, v11}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    const-string v2, "HermeticFileOverrides"

    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v7, "Parsed "

    .line 293
    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v3, " for Android package "

    .line 301
    .line 302
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    new-instance p0, Lcc9;

    .line 316
    .line 317
    invoke-direct {p0, v5}, Lcc9;-><init>(Ldg7;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 318
    .line 319
    .line 320
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 321
    .line 322
    .line 323
    :try_start_7
    new-instance v2, Lwe9;

    .line 324
    .line 325
    invoke-direct {v2, p0}, Lwe9;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :catch_1
    move-exception p0

    .line 330
    goto :goto_6

    .line 331
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :catchall_3
    move-exception v2

    .line 336
    :try_start_9
    const-class v3, Ljava/lang/Throwable;

    .line 337
    .line 338
    const-string v4, "addSuppressed"

    .line 339
    .line 340
    const-class v5, Ljava/lang/Throwable;

    .line 341
    .line 342
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 355
    .line 356
    .line 357
    :catch_2
    :goto_5
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 358
    :goto_6
    :try_start_b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 359
    .line 360
    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    throw v2

    .line 364
    :cond_a
    sget-object v2, Lre9;->a:Lre9;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 365
    .line 366
    :goto_7
    :try_start_c
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 367
    .line 368
    .line 369
    move-object v1, v2

    .line 370
    :goto_8
    sput-object v1, Lyc9;->a:Lve9;

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :goto_9
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 374
    .line 375
    .line 376
    throw p0

    .line 377
    :cond_b
    :goto_a
    monitor-exit v0

    .line 378
    return-object v1

    .line 379
    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 380
    throw p0
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 381
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    check-cast p0, Ly1a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ly1a;->e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
