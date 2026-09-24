.class public final synthetic Lko7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lih6;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

.field public final synthetic c:Lzn7;

.field public final synthetic d:Llh6;


# direct methods
.method public synthetic constructor <init>(Lih6;Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;Lzn7;Llh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lko7;->a:Lih6;

    .line 5
    .line 6
    iput-object p2, p0, Lko7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lko7;->c:Lzn7;

    .line 9
    .line 10
    iput-object p4, p0, Lko7;->d:Llh6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lko7;->a:Lih6;

    .line 2
    .line 3
    iget-boolean v0, v0, Lih6;->a:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lko7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 11
    .line 12
    sget-object v0, Lzn7;->q:Lyn7;

    .line 13
    .line 14
    iget-object p0, p0, Lko7;->c:Lzn7;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lyn7;->h(Lzn7;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;->Companion:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->setSavedStorageInfo(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v2, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Z:Lgv7;

    .line 25
    .line 26
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lzn7;

    .line 31
    .line 32
    sget-object v3, Lzn4;->a:Lzn4;

    .line 33
    .line 34
    new-instance v3, Lno7;

    .line 35
    .line 36
    invoke-direct {v3, v2, v0, p0, v1}, Lno7;-><init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;Lzn7;Lzn7;Ljv1;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Lko7;->d:Llh6;

    .line 44
    .line 45
    iget-object v0, p0, Llh6;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/CharSequence;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Llh6;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Ljava/lang/String;

    .line 61
    .line 62
    const/16 v0, 0xa

    .line 63
    .line 64
    invoke-static {v2, v1, p0, v0}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 68
    .line 69
    return-object p0
.end method
