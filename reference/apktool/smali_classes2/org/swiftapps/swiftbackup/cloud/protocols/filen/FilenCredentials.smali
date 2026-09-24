.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Lgb3;

.field private static final PREF_KEY:Ljava/lang/String; = "filen_credentials"


# instance fields
.field private final email:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgb3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 26
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->copy(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSession()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :goto_0
    add-int/2addr v0, p0

    .line 27
    return v0
.end method

.method public final isValid()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getEmail()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, p0, v1}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->hasRestorableCryptoState()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    new-instance v0, Lbn6;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    move-object p0, v0

    .line 55
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    instance-of v1, p0, Lbn6;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    move-object p0, v0

    .line 62
    :cond_2
    check-cast p0, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public final restorableSession()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getEmail()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v2, p0, v3}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->hasRestorableCryptoState()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->email:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->password:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->session:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 6
    .line 7
    const-string v2, ", password="

    .line 8
    .line 9
    const-string v3, ", session="

    .line 10
    .line 11
    const-string v4, "FilenCredentials(email="

    .line 12
    .line 13
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, ")"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final withSession(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v3, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
