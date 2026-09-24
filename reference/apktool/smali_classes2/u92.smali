.class public final Lu92;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu92;->a:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lu92;

    .line 2
    .line 3
    iget-object p0, p0, Lu92;->a:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lu92;-><init>(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lu92;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lu92;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lu92;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;->Companion:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;

    .line 5
    .line 6
    iget-object p0, p0, Lu92;->a:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->setSavedStorageInfo(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method
