.class public final synthetic Lna7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpa7;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lpa7;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna7;->a:Lpa7;

    .line 5
    .line 6
    iput-boolean p2, p0, Lna7;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lna7;->a:Lpa7;

    .line 2
    .line 3
    iget-object v0, v0, Lpa7;->y:Lgv7;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 10
    .line 11
    iget-boolean p0, p0, Lna7;->b:Z

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
