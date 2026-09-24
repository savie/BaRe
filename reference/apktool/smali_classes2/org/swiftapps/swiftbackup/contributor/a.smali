.class public final Lorg/swiftapps/swiftbackup/contributor/a;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lzc2;

.field public final f:Lex6;

.field public g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    const-string v1, "contributorDetails"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lre3;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x6

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/a;->e:Lzc2;

    .line 27
    .line 28
    new-instance v0, Lex6;

    .line 29
    .line 30
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/a;->f:Lex6;

    .line 34
    .line 35
    new-instance v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 36
    .line 37
    const/16 v9, 0x7f

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-direct/range {v1 .. v10}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 51
    .line 52
    sget-object v0, Lzn4;->a:Lzn4;

    .line 53
    .line 54
    new-instance v0, Lpv1;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, p0, v1}, Lpv1;-><init>(Lorg/swiftapps/swiftbackup/contributor/a;Ljv1;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 61
    .line 62
    .line 63
    return-void
.end method
