.class public final synthetic Lz65;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lf75;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lf75;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz65;->a:Lf75;

    .line 5
    .line 6
    iput p2, p0, Lz65;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lz65;->b:I

    .line 2
    .line 3
    iget-object p0, p0, Lz65;->a:Lf75;

    .line 4
    .line 5
    iget-object p0, p0, Lf75;->a:Lk28;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
