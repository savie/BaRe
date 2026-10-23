.class public Lma2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;
.implements Lvl0;
.implements Ldh5;
.implements Lfy0;
.implements Le33;
.implements Lnx1;
.implements Lhu5;
.implements Lz23;
.implements Ly57;
.implements Lr67;
.implements Lgk8;
.implements Laa9;
.implements Les9;
.implements Lgt9;
.implements Lcs9;
.implements Ly1a;


# static fields
.field public static final b:Lma2;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lma2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lma2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lma2;->b:Lma2;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lma2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x15

    .line 2
    .line 3
    iput p1, p0, Lma2;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static q(Ljava/lang/String;)Lff2;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const-string v0, "GET"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lff2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lff2;-><init>(Ljava/net/HttpURLConnection;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static r(Ljava/lang/String;)Ley5;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc;->a:Lhy0;

    .line 5
    .line 6
    new-instance v0, Lnw0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lnw0;->Z(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {v0, p0}, Lc;->d(Lnw0;Z)Ley5;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public a([BII)[B
    .locals 0

    .line 1
    add-int/2addr p3, p2

    .line 2
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public b([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(F)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "not implemented"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public d(Lix0;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-class p0, Lw99;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-ne p2, p0, :cond_7

    .line 5
    .line 6
    new-instance p0, Lhx0;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lhx0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, p1, Lix0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lix0;->p(I)Llb9;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v3, Llb9;->c:Lia9;

    .line 34
    .line 35
    sget-object v5, Lia9;->c:Lia9;

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    invoke-virtual {v3}, Llb9;->a()Lvm4;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    instance-of v5, v4, Loe9;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    check-cast v4, Loe9;

    .line 52
    .line 53
    invoke-virtual {v4}, Loe9;->J()Ld2a;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    instance-of v5, v4, Lns9;

    .line 59
    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    check-cast v4, Lns9;

    .line 63
    .line 64
    invoke-virtual {v4}, Lns9;->J()Ld2a;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :goto_1
    new-instance v5, Lon9;

    .line 69
    .line 70
    invoke-virtual {p0, v3}, Lhx0;->o(Llb9;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lw99;

    .line 75
    .line 76
    iget v3, v3, Llb9;->d:I

    .line 77
    .line 78
    invoke-direct {v5, v6, v3}, Lon9;-><init>(Lw99;I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v4, Ld2a;->a:[B

    .line 82
    .line 83
    array-length v6, v3

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    array-length v3, v3

    .line 87
    const/4 v6, 0x5

    .line 88
    if-ne v3, v6, :cond_1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    const-string p0, "PrefixMap only supports 0 and 5 byte prefixes"

    .line 92
    .line 93
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_2
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/List;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v4}, Lvm4;->G()Lbd9;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const-string v0, "Cannot get output prefix for key of class "

    .line 141
    .line 142
    const-string v1, " with parameters "

    .line 143
    .line 144
    invoke-static {v0, p1, v1, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_6
    invoke-virtual {p1}, Lix0;->q()V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lsn9;

    .line 160
    .line 161
    new-instance v2, Lon9;

    .line 162
    .line 163
    invoke-virtual {p1}, Lix0;->w()Llb9;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {p0, v3}, Lhx0;->o(Llb9;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lw99;

    .line 172
    .line 173
    invoke-virtual {p1}, Lix0;->w()Llb9;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget p1, p1, Llb9;->d:I

    .line 178
    .line 179
    invoke-direct {v2, p0, p1}, Lon9;-><init>(Lw99;I)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lit9;

    .line 183
    .line 184
    invoke-direct {p0, v1}, Lit9;-><init>(Ljava/util/HashMap;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {v0, v2, p0}, Lsn9;-><init>(Lon9;Lit9;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_7
    const-string p0, "AeadConfigurationV1 can only create AEADs"

    .line 196
    .line 197
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-object v0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 4

    .line 1
    iget p0, p0, Lma2;->a:I

    .line 2
    .line 3
    const-string v0, "Unable to serialize variant: "

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lto9;

    .line 9
    .line 10
    invoke-static {}, Lyw9;->w()Lxw9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object v1, p1, Lto9;->e:Lkm8;

    .line 15
    .line 16
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ld2a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    array-length v3, v1

    .line 26
    invoke-static {v1, v2, v3}, Lt69;->g([BII)Lx69;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lj79;->c()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 34
    .line 35
    check-cast v2, Lyw9;

    .line 36
    .line 37
    invoke-static {v2, v1}, Lyw9;->v(Lyw9;Lx69;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lyw9;

    .line 45
    .line 46
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object v1, p1, Lto9;->d:Ldp9;

    .line 51
    .line 52
    iget-object v1, v1, Ldp9;->b:Lcp9;

    .line 53
    .line 54
    sget-object v2, Llp9;->e:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lr0a;

    .line 67
    .line 68
    iget-object p1, p1, Lto9;->k:Ljava/lang/Integer;

    .line 69
    .line 70
    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :pswitch_0
    check-cast p1, Lkh9;

    .line 93
    .line 94
    invoke-static {}, Lc0a;->w()Lb0a;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {}, Li0a;->t()Lh0a;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p1, Lkh9;->d:Lmh9;

    .line 103
    .line 104
    iget-object v2, v2, Lmh9;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1}, Lj79;->c()V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 110
    .line 111
    check-cast v3, Li0a;

    .line 112
    .line 113
    invoke-static {v3, v2}, Li0a;->v(Li0a;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Li0a;

    .line 121
    .line 122
    invoke-virtual {p0}, Lj79;->c()V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 126
    .line 127
    check-cast v2, Lc0a;

    .line 128
    .line 129
    invoke-static {v2, v1}, Lc0a;->v(Lc0a;Li0a;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lc0a;

    .line 137
    .line 138
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iget-object v1, p1, Lkh9;->d:Lmh9;

    .line 143
    .line 144
    iget-object v1, v1, Lmh9;->b:Llh9;

    .line 145
    .line 146
    sget-object v2, Llh9;->c:Llh9;

    .line 147
    .line 148
    if-eq v2, v1, :cond_2

    .line 149
    .line 150
    sget-object v2, Llh9;->d:Llh9;

    .line 151
    .line 152
    if-ne v2, v1, :cond_1

    .line 153
    .line 154
    sget-object v0, Lr0a;->e:Lr0a;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_2
    sget-object v0, Lr0a;->c:Lr0a;

    .line 172
    .line 173
    :goto_0
    iget-object p1, p1, Lkh9;->f:Ljava/lang/Integer;

    .line 174
    .line 175
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 176
    .line 177
    const/4 v2, 0x5

    .line 178
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public g()Lwo4;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "not implemented"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 15

    .line 1
    new-instance p0, Lb05;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const-string v8, "Null flags"

    .line 15
    .line 16
    if-eqz v6, :cond_4

    .line 17
    .line 18
    new-instance v1, Lhe0;

    .line 19
    .line 20
    const-wide/16 v2, 0x7530

    .line 21
    .line 22
    const-wide/32 v4, 0x5265c00

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lhe0;-><init>(JJLjava/util/Set;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Ld66;->a:Ld66;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    new-instance v1, Lhe0;

    .line 36
    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    const-wide/32 v4, 0x5265c00

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v6}, Lhe0;-><init>(JJLjava/util/Set;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Ld66;->c:Ld66;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    sget-object v1, Lr47;->b:Lr47;

    .line 53
    .line 54
    filled-new-array {v1}, [Lr47;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    if-eqz v14, :cond_1

    .line 72
    .line 73
    new-instance v9, Lhe0;

    .line 74
    .line 75
    const-wide/32 v10, 0x5265c00

    .line 76
    .line 77
    .line 78
    const-wide/32 v12, 0x5265c00

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v9 .. v14}, Lhe0;-><init>(JJLjava/util/Set;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Ld66;->b:Ld66;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {}, Ld66;->values()[Ld66;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    array-length v2, v2

    .line 102
    if-lt v1, v2, :cond_0

    .line 103
    .line 104
    new-instance v1, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lge0;

    .line 110
    .line 111
    invoke-direct {v1, p0, v0}, Lge0;-><init>(Lba1;Ljava/util/HashMap;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_0
    const-string p0, "Not all priorities have been configured"

    .line 116
    .line 117
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v7

    .line 121
    :cond_1
    invoke-static {v8}, Lf6;->n(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v7

    .line 125
    :cond_2
    invoke-static {v8}, Lf6;->n(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v7

    .line 129
    :cond_3
    invoke-static {v8}, Lf6;->n(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object v7

    .line 133
    :cond_4
    invoke-static {v8}, Lf6;->n(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v7
.end method

.method public h(F)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public i(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public l()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lnc6;

    .line 2
    .line 3
    const-class v0, Lku4;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-static {p0}, Lrs9;->e(Ljava/util/concurrent/Executor;)Lrx1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 4

    .line 1
    iget p0, p0, Lma2;->a:I

    .line 2
    .line 3
    const-string v0, "Only version 0 keys are accepted"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 20
    .line 21
    sget-object v2, Lf79;->a:Lf79;

    .line 22
    .line 23
    invoke-static {p0, v2}, Lcv9;->u(Lt69;Lf79;)Lcv9;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcv9;->t()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Leu9;->b()Ll22;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcv9;->z()Lt69;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lt69;->d()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ll22;->r(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcv9;->y()Liv9;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Liv9;->t()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Ll22;->s(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Lpt9;->e:Lr0a;

    .line 60
    .line 61
    invoke-static {v2}, Lqu9;->a(Lr0a;)Ldu9;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, v0, Ll22;->d:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v0}, Ll22;->q()Leu9;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v2, Lgd;

    .line 72
    .line 73
    const/16 v3, 0xa

    .line 74
    .line 75
    invoke-direct {v2, v3}, Lgd;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v2, Lgd;->c:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v1, v2, Lgd;->d:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object v0, v2, Lgd;->b:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcv9;->z()Lt69;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lt69;->w()[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    new-instance v0, Lkm8;

    .line 93
    .line 94
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, v2, Lgd;->c:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 104
    .line 105
    iput-object p0, v2, Lgd;->d:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v2}, Lgd;->p()Lzt9;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    const-string p0, "Parsing AesCmacKey failed"

    .line 119
    .line 120
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string p0, "Wrong type URL in call to AesCmacProtoSerialization.parseKey"

    .line 125
    .line 126
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-object v1

    .line 130
    :pswitch_0
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 131
    .line 132
    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    :try_start_1
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 141
    .line 142
    sget-object v2, Lf79;->a:Lf79;

    .line 143
    .line 144
    invoke-static {p0, v2}, Lgz9;->u(Lt69;Lf79;)Lgz9;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lgz9;->t()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_2

    .line 153
    .line 154
    iget-object v0, p1, Lpt9;->e:Lr0a;

    .line 155
    .line 156
    invoke-virtual {p0}, Lgz9;->y()Laz9;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Lrq9;->a(Lr0a;Laz9;)Llq9;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v2, v0, Llq9;->a:Ljq9;

    .line 165
    .line 166
    invoke-virtual {p0}, Lgz9;->B()Lt69;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lt69;->w()[B

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v2, p0}, Lrq9;->c(Ljq9;[B)Ld2a;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget-object p1, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-static {v0, p0, p1}, Lvq9;->K(Llq9;Ld2a;Ljava/lang/Integer;)Lvq9;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_1

    .line 185
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 186
    .line 187
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :catch_1
    const-string p0, "Parsing HpkePublicKey failed"

    .line 192
    .line 193
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_3
    const-string p1, "Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: "

    .line 198
    .line 199
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-object v1

    .line 207
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public o(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onScrollLimit(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onScrollProgress(IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lbd9;)Lot9;
    .locals 5

    .line 1
    check-cast p1, Lgf9;

    .line 2
    .line 3
    invoke-static {}, Lmz9;->t()Llz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lov9;->t()Lnv9;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lwv9;->w()Lvv9;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Lzv9;->v()Lyv9;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, p1, Lgf9;->c:I

    .line 25
    .line 26
    invoke-virtual {v2}, Lj79;->c()V

    .line 27
    .line 28
    .line 29
    iget-object v4, v2, Lj79;->b:Lk79;

    .line 30
    .line 31
    check-cast v4, Lzv9;

    .line 32
    .line 33
    invoke-static {v4, v3}, Lzv9;->u(Lzv9;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lj79;->b()Lk79;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lzv9;

    .line 41
    .line 42
    invoke-virtual {v1}, Lj79;->c()V

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 46
    .line 47
    check-cast v3, Lwv9;

    .line 48
    .line 49
    invoke-static {v3, v2}, Lwv9;->v(Lwv9;Lzv9;)V

    .line 50
    .line 51
    .line 52
    iget v2, p1, Lgf9;->a:I

    .line 53
    .line 54
    invoke-virtual {v1}, Lj79;->c()V

    .line 55
    .line 56
    .line 57
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 58
    .line 59
    check-cast v3, Lwv9;

    .line 60
    .line 61
    invoke-static {v3, v2}, Lwv9;->u(Lwv9;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lwv9;

    .line 69
    .line 70
    invoke-virtual {v0}, Lj79;->c()V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 74
    .line 75
    check-cast v2, Lov9;

    .line 76
    .line 77
    invoke-static {v2, v1}, Lov9;->v(Lov9;Lwv9;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lmy9;->y()Lly9;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {p1}, Lmk9;->d(Lgf9;)Lpy9;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1}, Lj79;->c()V

    .line 89
    .line 90
    .line 91
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 92
    .line 93
    check-cast v3, Lmy9;

    .line 94
    .line 95
    invoke-static {v3, v2}, Lmy9;->w(Lmy9;Lpy9;)V

    .line 96
    .line 97
    .line 98
    iget v2, p1, Lgf9;->b:I

    .line 99
    .line 100
    invoke-virtual {v1}, Lj79;->c()V

    .line 101
    .line 102
    .line 103
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 104
    .line 105
    check-cast v3, Lmy9;

    .line 106
    .line 107
    invoke-static {v3, v2}, Lmy9;->v(Lmy9;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lmy9;

    .line 115
    .line 116
    invoke-virtual {v0}, Lj79;->c()V

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 120
    .line 121
    check-cast v2, Lov9;

    .line 122
    .line 123
    invoke-static {v2, v1}, Lov9;->w(Lov9;Lmy9;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lov9;

    .line 131
    .line 132
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lgf9;->e:Lef9;

    .line 140
    .line 141
    invoke-static {p1}, Lmk9;->c(Lef9;)Lr0a;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lmz9;

    .line 153
    .line 154
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p0, Lsx0;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lsx0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method
