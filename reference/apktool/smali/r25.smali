.class public final Lr25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lb35;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc35;


# direct methods
.method public constructor <init>(Lc35;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr25;->b:Lc35;

    .line 5
    .line 6
    iput p2, p0, Lr25;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr25;->b:Lc35;

    .line 2
    .line 3
    iget p0, p0, Lr25;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lc35;->i(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
