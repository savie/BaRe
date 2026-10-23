.class public final synthetic Lo55;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

.field public final synthetic b:Lry5;

.field public final synthetic c:Lu55;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Lu55;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo55;->a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lo55;->b:Lry5;

    .line 7
    .line 8
    iput-object p3, p0, Lo55;->c:Lu55;

    .line 9
    .line 10
    iput p4, p0, Lo55;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 2
    .line 3
    const v0, 0x7f13042d

    .line 4
    .line 5
    .line 6
    iget-object v4, p0, Lo55;->a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lil0;->M(I)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lzn4;->a:Lzn4;

    .line 12
    .line 13
    new-instance v1, Lq55;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v2, p0, Lo55;->c:Lu55;

    .line 17
    .line 18
    iget-object v3, p0, Lo55;->b:Lry5;

    .line 19
    .line 20
    iget v5, p0, Lo55;->d:I

    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lq55;-><init>(Lu55;Lry5;Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;ILjv1;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-static {p0, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 27
    .line 28
    .line 29
    sget-object p0, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    return-object p0
.end method
