.class public final Lc00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lji3;
.implements Lvb8;
.implements Lcl6;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static d:Lc00;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc00;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p1, Lk50;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Ldg7;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lc00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lc00;->c:Ljava/lang/Object;

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput p1, p0, Lc00;->a:I

    iput-object p2, p0, Lc00;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc00;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 43
    iput p1, p0, Lc00;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 44
    iput p3, p0, Lc00;->a:I

    iput-object p2, p0, Lc00;->b:Ljava/lang/Object;

    iput-object p1, p0, Lc00;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lc00;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ".lck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lc00;->a:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lc00;->c:Ljava/lang/Object;

    return-void

    .line 50
    :cond_0
    const-string p0, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lnr8;Lar8;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lc00;->a:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc00;->c:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lc00;->b:Ljava/lang/Object;

    .line 61
    iput-object p0, p2, Lar8;->c:Lc00;

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lc00;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc00;->c:Ljava/lang/Object;

    .line 54
    const-string p2, "lingver_preference"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Luc2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lc00;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p1, Luc2;->b:Lzq8;

    .line 57
    iput-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 58
    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Luc2;->a(Ljava/lang/String;)Lu00;

    move-result-object p1

    iput-object p1, p0, Lc00;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwo5;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lc00;->a:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lc00;->q(Lwo5;)V

    return-void
.end method

.method public static o(Lqn5;Ljp1;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lqn5;->Z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p0, Lat4;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljp1;->c()V

    .line 11
    .line 12
    .line 13
    iget v0, p1, Ljp1;->d:I

    .line 14
    .line 15
    iput v0, p1, Ljp1;->c:I

    .line 16
    .line 17
    iget-object v0, p1, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-interface {p0, v2}, Lqn5;->v(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iput-boolean v1, p1, Ljp1;->e:Z

    .line 28
    .line 29
    iget-object p0, p1, Ljp1;->h:Lkp1;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-long v0, v0

    .line 41
    iget-wide v2, p0, Lkp1;->a:J

    .line 42
    .line 43
    cmp-long p0, v0, v2

    .line 44
    .line 45
    if-lez p0, :cond_1

    .line 46
    .line 47
    iget p0, p1, Ljp1;->d:I

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljp1;->a(I)Lgy5;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    iget p0, p1, Ljp1;->d:I

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljp1;->a(I)Lgy5;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lgy5;->i()Lm61;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object v0, Lm61;->d:Lm61;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p1}, Ljp1;->b()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void

    .line 81
    :cond_2
    invoke-interface {p0}, Lqn5;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    instance-of v0, p0, Lq61;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    check-cast p0, Lq61;

    .line 92
    .line 93
    new-instance v0, Lip1;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Lip1;-><init>(Ljp1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0, v1}, Lq61;->d(Lp61;Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const-string p1, "Expected children node, but got: "

    .line 103
    .line 104
    invoke-static {p0, p1}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    const-string p0, "Can\'t calculate hash on empty node!"

    .line 109
    .line 110
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Lc00;
    .locals 5

    .line 1
    sget-object v0, Lc00;->d:Lc00;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lc00;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lc00;

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lhe9;->a()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lc00;->s(Landroid/content/Context;Ljava/lang/String;)Ltr9;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v1

    .line 28
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "Exception encountered during crypto setup:\n"

    .line 33
    .line 34
    const-string v4, "FirebearStorageCryptoHelper"

    .line 35
    .line 36
    invoke-static {v3, v2, v4}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    instance-of v1, v1, Ljava/security/GeneralSecurityException;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "com.google.firebase.auth.api.crypto."

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "StorageCryptoKeyset"

    .line 67
    .line 68
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-static {p0, p1}, Lc00;->s(Landroid/content/Context;Ljava/lang/String;)Ltr9;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    goto :goto_2

    .line 80
    :catch_2
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :catch_3
    move-exception p0

    .line 83
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string v1, "Exception encountered during second attempt to crypto setup:\n"

    .line 88
    .line 89
    invoke-static {v1, p0, v4}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    const/4 p0, 0x0

    .line 93
    :goto_2
    const/16 v1, 0x11

    .line 94
    .line 95
    invoke-direct {v0, v1, p1, p0}, Lc00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lc00;->d:Lc00;

    .line 99
    .line 100
    :cond_2
    sget-object p0, Lc00;->d:Lc00;

    .line 101
    .line 102
    return-object p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Ltr9;
    .locals 3

    .line 1
    new-instance v0, Lso8;

    .line 2
    .line 3
    invoke-direct {v0}, Lso8;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.google.firebase.auth.api.crypto."

    .line 7
    .line 8
    invoke-static {v1, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iput-object p0, v0, Lso8;->a:Ljava/lang/Object;

    .line 16
    .line 17
    const-string p0, "StorageCryptoKeyset"

    .line 18
    .line 19
    iput-object p0, v0, Lso8;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v1, v0, Lso8;->c:Ljava/lang/Object;

    .line 22
    .line 23
    sget-object p0, Lme9;->b:Lmz9;

    .line 24
    .line 25
    iput-object p0, v0, Lso8;->k:Ljava/lang/Object;

    .line 26
    .line 27
    const-string p0, "android-keystore://firebear_main_key_id_for_storage_crypto."

    .line 28
    .line 29
    invoke-static {p0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "android-keystore://"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iput-object p0, v0, Lso8;->d:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0}, Lso8;->b()Ltr9;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    const-string p0, "key URI must start with android-keystore://"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    const-string p0, "need an Android context"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lc00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Lwc2;->b(Ljava/lang/String;Ljava/lang/String;)Lwc2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p2, p0, Lc00;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lwj6;

    .line 12
    .line 13
    iget-object p0, p0, Lc00;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lkh8;

    .line 16
    .line 17
    iget-object v0, p0, Lkh8;->b:Lgy5;

    .line 18
    .line 19
    const-string v1, "Persisted write"

    .line 20
    .line 21
    invoke-static {p2, v1, v0, p1}, Lwj6;->b(Lwj6;Ljava/lang/String;Lgy5;Lwc2;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lkh8;->a:J

    .line 25
    .line 26
    iget-object p0, p0, Lkh8;->b:Lgy5;

    .line 27
    .line 28
    invoke-static {p2, v0, v1, p0, p1}, Lwj6;->c(Lwj6;JLgy5;Lwc2;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public f(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    new-array p1, p1, [I

    .line 17
    .line 18
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    array-length v2, v0

    .line 25
    if-lt p1, v2, :cond_2

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    :goto_0
    if-gt v2, p1, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array p1, v2, [I

    .line 34
    .line 35
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lc00;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, [I

    .line 45
    .line 46
    array-length p1, v0

    .line 47
    array-length v0, p0

    .line 48
    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvb8;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/ImageView;

    .line 4
    .line 5
    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method

.method public h()Ljava/util/Locale;
    .locals 4

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v1, "language_key"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "language"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "country"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "variant"

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v2, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-direct {v2, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_1
    new-instance p0, Ldp4;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 59
    .line 60
    .line 61
    const-class v0, Lpe4;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lpe4;->z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_0
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ljava/util/Locale;

    .line 74
    .line 75
    return-object p0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lc00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lc00;->c:Ljava/lang/Object;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void

    .line 46
    :goto_2
    iget-object v2, p0, Lc00;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/nio/channels/FileChannel;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lc00;->c:Ljava/lang/Object;

    .line 57
    .line 58
    const-string p0, "Unable to lock file: \'"

    .line 59
    .line 60
    const-string v2, "\'."

    .line 61
    .line 62
    invoke-static {p0, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v1}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public l(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lc00;->f(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lc00;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lc00;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lyk7;

    .line 58
    .line 59
    iget v2, v1, Lyk7;->a:I

    .line 60
    .line 61
    if-ge v2, p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    add-int/2addr v2, p2

    .line 65
    iput v2, v1, Lyk7;->a:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public m(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lc00;->f(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p2

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lc00;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v1, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lc00;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lyk7;

    .line 61
    .line 62
    iget v3, v2, Lyk7;->a:I

    .line 63
    .line 64
    if-ge v3, p1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ge v3, v0, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lc00;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-int/2addr v3, p2

    .line 78
    iput v3, v2, Lyk7;->a:I

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    return-void
.end method

.method public n(Lbr8;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc00;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnr8;

    .line 4
    .line 5
    iget-object v0, v0, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    new-instance v1, Lax2;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lax2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lcom/google/firebase/auth/internal/GenericIdpActivity;->c:Lec9;

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.intent.action.VIEW"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v3, "GenericIdpActivity"

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v5, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v6, "android.support.customtabs.action.CustomTabsService"

    .line 38
    .line 39
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    new-instance p0, Lh72;

    .line 55
    .line 56
    invoke-direct {p0}, Lh72;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lh72;->a()Lix0;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v1, "Opening IDP Sign In link in a custom chrome tab."

    .line 64
    .line 65
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/net/Uri;

    .line 73
    .line 74
    iget-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Landroid/content/Intent;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/net/Uri;

    .line 96
    .line 97
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .line 99
    .line 100
    const-string p1, "com.android.browser.application_id"

    .line 101
    .line 102
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string p0, "Opening IDP Sign In link in a browser window."

    .line 106
    .line 107
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    const/high16 p0, 0x40000000    # 2.0f

    .line 111
    .line 112
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    const/high16 p0, 0x10000000

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    const-string p0, "Device cannot resolve intent for: android.intent.action.VIEW"

    .line 125
    .line 126
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->o()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lar8;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lar8;->m:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lar8;->e(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public q(Lwo5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwo5;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lc00;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lwo5;->e(Lc00;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lih6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lla;

    .line 9
    .line 10
    new-instance v2, Lvi3;

    .line 11
    .line 12
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lt72;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1, p0}, Lvi3;-><init>(Lih6;Lli3;Lt72;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, p2}, Lla;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lyx1;->a:Lyx1;

    .line 24
    .line 25
    if-ne p0, p1, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 29
    .line 30
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lc00;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lvb8;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
