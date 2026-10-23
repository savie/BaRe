.class public final Lim0;
.super Lzb;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lkm0;


# direct methods
.method public constructor <init>(Lkm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lim0;->b:Lkm0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p0, p0, Lim0;->b:Lkm0;

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lkm0;->setIndeterminate(Z)V

    .line 5
    .line 6
    .line 7
    iget p1, p0, Lkm0;->b:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lkm0;->c:Z

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lkm0;->c(IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
