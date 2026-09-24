.class public final synthetic Lhe7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lje7;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lje7;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhe7;->a:Lje7;

    .line 5
    .line 6
    iput p3, p0, Lhe7;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhe7;->a:Lje7;

    .line 2
    .line 3
    iget-object v0, v0, Lje7;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ldl0;

    .line 6
    .line 7
    iget p0, p0, Lhe7;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ldl0;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
