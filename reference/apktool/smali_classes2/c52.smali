.class public final synthetic Lc52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lc52;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lc52;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 2
    .line 3
    iget-object v0, p0, Lc52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lc52;->b:Z

    .line 10
    .line 11
    iget-boolean p0, p0, Lc52;->c:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0}, Lm62;->k(ZZ)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lbe8;->a:Lbe8;

    .line 17
    .line 18
    return-object p0
.end method
