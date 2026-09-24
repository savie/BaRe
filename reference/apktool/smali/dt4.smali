.class public final Ldt4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final synthetic a:Lhu4;

.field public final synthetic b:Lot9;


# direct methods
.method public constructor <init>(Lhu4;Lot9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldt4;->a:Lhu4;

    .line 5
    .line 6
    iput-object p2, p0, Ldt4;->b:Lot9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Lfu4;Lrt4;)V
    .locals 0

    .line 1
    sget-object p1, Lrt4;->ON_START:Lrt4;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ldt4;->a:Lhu4;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Ldt4;->b:Lot9;

    .line 11
    .line 12
    invoke-virtual {p0}, Lot9;->i()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
