.class public final synthetic Lui2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final synthetic b:Liu;

.field public final synthetic c:Lhk;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lui2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lui2;->b:Liu;

    .line 7
    .line 8
    iput-object p3, p0, Lui2;->c:Lhk;

    .line 9
    .line 10
    iput-object p4, p0, Lui2;->d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 2
    .line 3
    iget-object p1, p0, Lui2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p1, p0, Lui2;->b:Liu;

    .line 10
    .line 11
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p1, p0, Lui2;->c:Lhk;

    .line 16
    .line 17
    invoke-static {p1}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object p0, p0, Lui2;->d:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 22
    .line 23
    invoke-static {p0}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v0, Lkk2;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-direct/range {v0 .. v5}, Lkk2;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
