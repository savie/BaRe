.class public final Lka;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lqp9;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La85;Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 58
    new-instance v0, Le85;

    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 60
    new-instance v0, Lc85;

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iput-object v0, p0, Lka;->a:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lka;->b:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, Lka;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lka;->a:Ljava/lang/Object;

    iput-object p2, p0, Lka;->b:Ljava/lang/Object;

    iput-object p3, p0, Lka;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lka;->b:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lka;->c:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lka;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka;->a:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, Lcom/google/gson/a;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/gson/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lka;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getMetadataKeysHex()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Lhb3;->q(Ljava/lang/String;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v0, p0, Lka;->c:Ljava/lang/Object;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lka;->a:Ljava/lang/Object;

    .line 71
    const-string p1, "AES/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    .line 73
    new-array v0, v0, [B

    .line 74
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lrs9;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lka;->b:Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lrs9;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lka;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/view/View;)Lka;
    .locals 2

    .line 1
    const v0, 0x7f0a020c

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    new-instance v0, Lka;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1, p0}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "Missing required view with ID: "

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static f(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lka;->g(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string p0, "Missing Filen item field: "

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public static g(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    instance-of v1, p0, Lel4;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "Missing Filen item field: "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ne v1, p0, :cond_2

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge p0, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v2, 0x61

    .line 34
    .line 35
    if-gt v2, v1, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x67

    .line 38
    .line 39
    if-ge v1, v2, :cond_2

    .line 40
    .line 41
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    :cond_3
    if-nez p1, :cond_4

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_4
    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lka;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v1, p0, Lka;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object p0, p0, Lka;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/content/Context;

    .line 12
    .line 13
    sget v2, Lzf9;->b:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move-object v4, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "com.google.android.auth.IAuthManagerService"

    .line 21
    .line 22
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v5, v4, Lsh9;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    check-cast v4, Lsh9;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v4, Lee9;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v4, p1, v3, v5}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    check-cast v4, Lee9;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v3, v4, Lvz8;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lxa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "oauth2:https://www.googleapis.com/auth/drive.file"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Lxa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-virtual {v4, p1, v0}, Lvz8;->j(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lxa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-static {p0, v0}, Lsz3;->c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    const-string p0, "Service call returned null"

    .line 88
    .line 89
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v2
.end method

.method public c([B)[B
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "AES/ECB/NoPadding"

    .line 5
    .line 6
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lka;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 19
    .line 20
    .line 21
    array-length v1, p1

    .line 22
    add-int/lit8 v1, v1, 0xf

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    div-int/2addr v1, v3

    .line 27
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    mul-int/lit8 v4, v1, 0x10

    .line 32
    .line 33
    array-length v5, p1

    .line 34
    if-ne v4, v5, :cond_0

    .line 35
    .line 36
    add-int/lit8 v5, v1, -0x1

    .line 37
    .line 38
    mul-int/2addr v5, v3

    .line 39
    invoke-static {p1, v5, v4}, Lx50;->k0([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object p0, p0, Lka;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, [B

    .line 46
    .line 47
    invoke-static {v4, p0}, Lrs9;->b([B[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 53
    .line 54
    mul-int/2addr v4, v3

    .line 55
    array-length v5, p1

    .line 56
    invoke-static {p1, v4, v5}, Lx50;->k0([BII)[B

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    array-length v5, v4

    .line 61
    if-ge v5, v3, :cond_2

    .line 62
    .line 63
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    array-length v4, v4

    .line 68
    const/16 v6, -0x80

    .line 69
    .line 70
    aput-byte v6, v5, v4

    .line 71
    .line 72
    iget-object p0, p0, Lka;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, [B

    .line 75
    .line 76
    invoke-static {v5, p0}, Lrs9;->b([B[B)[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_0
    new-array v3, v3, [B

    .line 81
    .line 82
    sub-int/2addr v1, v2

    .line 83
    const/4 v2, 0x0

    .line 84
    :goto_1
    if-ge v2, v1, :cond_1

    .line 85
    .line 86
    mul-int/lit8 v4, v2, 0x10

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    mul-int/lit8 v5, v2, 0x10

    .line 91
    .line 92
    invoke-static {p1, v4, v5}, Lx50;->k0([BII)[B

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lrs9;->b([B[B)[B

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-static {p0, v3}, Lrs9;->b([B[B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_2
    const-string p0, "Value must be smaller than an AES block"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p0, 0x0

    .line 126
    return-object p0
.end method

.method public d(Ljava/lang/String;Lmt3;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lka;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [B

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1, v1}, Lhb3;->c(Ljava/lang/String;[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p2, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    invoke-static {v0}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Throwable;

    .line 47
    .line 48
    const-string p2, "No Filen metadata key could decrypt the item"

    .line 49
    .line 50
    invoke-direct {p0, p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public e(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lka;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lka;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    sget-object v1, Leb3;->V3:Leb3;

    .line 17
    .line 18
    invoke-virtual {v1}, Leb3;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    sget-object p0, Lhb3;->a:[B

    .line 25
    .line 26
    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [B

    .line 31
    .line 32
    invoke-static {p1, p0, p2}, Lhb3;->l(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lhb3;->a:[B

    .line 38
    .line 39
    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, [B

    .line 44
    .line 45
    invoke-static {p1, p0, p2}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lka;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    return-object p0
.end method
