.class public final synthetic Lvs5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic a:Lhu4;

.field public final synthetic b:Lys5;


# direct methods
.method public synthetic constructor <init>(Lhu4;Lys5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvs5;->a:Lhu4;

    .line 5
    .line 6
    iput-object p2, p0, Lvs5;->b:Lys5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvs5;->a:Lhu4;

    .line 2
    .line 3
    iget-object p0, p0, Lvs5;->b:Lys5;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lhu4;->f(Leu4;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
