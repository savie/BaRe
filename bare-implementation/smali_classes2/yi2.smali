.class public final synthetic Lyi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lq05;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final synthetic c:Liz4;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;


# direct methods
.method public synthetic constructor <init>(Lq05;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyi2;->a:Lq05;

    .line 5
    .line 6
    iput-object p2, p0, Lyi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lyi2;->c:Liz4;

    .line 9
    .line 10
    iput-object p4, p0, Lyi2;->d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 4
    .line 5
    sget-object v0, Lzi2;->b:[I

    .line 6
    .line 7
    iget-object v1, p0, Lyi2;->a:Lq05;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lyi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lyi2;->d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 35
    .line 36
    invoke-virtual {v0, p0, p1}, Lmk2;->p(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Lyi2;->c:Liz4;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_2
    invoke-virtual {v0, v2, p1}, Lmk2;->o(Lgm;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 60
    .line 61
    return-object p0
.end method
