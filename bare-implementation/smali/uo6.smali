.class public final synthetic Luo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh07;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:Ldp6;


# direct methods
.method public synthetic constructor <init>(Lkh6;Ldp6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luo6;->a:Lkh6;

    .line 5
    .line 6
    iput-object p2, p0, Luo6;->b:Ldp6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 3

    .line 1
    iget-wide v0, p1, Lf07;->f:J

    .line 2
    .line 3
    iget-object v2, p0, Luo6;->a:Lkh6;

    .line 4
    .line 5
    iput-wide v0, v2, Lkh6;->a:J

    .line 6
    .line 7
    iget-object p0, p0, Luo6;->b:Ldp6;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ldp6;->a(Lf07;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
