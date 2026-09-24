.class public final Ld70;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lrd5;

.field public final synthetic d:Le70;


# direct methods
.method public constructor <init>(Le70;Ljava/lang/Object;Ljava/lang/Object;Lrd5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld70;->d:Le70;

    .line 5
    .line 6
    iput-object p2, p0, Ld70;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Ld70;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Ld70;->c:Lrd5;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld70;->d:Le70;

    .line 2
    .line 3
    iget-object v0, v0, Le70;->e:Ls74;

    .line 4
    .line 5
    iget-object v1, p0, Ld70;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Ld70;->c:Lrd5;

    .line 8
    .line 9
    iget-object p0, p0, Ld70;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v0, p0, v1, v2}, Ls74;->b(Ljava/lang/Object;Ljava/lang/Object;Lrd5;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
