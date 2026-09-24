.class public final synthetic Ljl8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lkm0;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lkm0;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljl8;->a:Lkm0;

    .line 5
    .line 6
    iput p2, p0, Ljl8;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Ljl8;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Ljl8;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ljl8;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Ljl8;->a:Lkm0;

    .line 5
    .line 6
    iget v3, p0, Ljl8;->b:I

    .line 7
    .line 8
    iget-boolean p0, p0, Ljl8;->c:Z

    .line 9
    .line 10
    invoke-static {v2, v3, v1, p0, v0}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method
