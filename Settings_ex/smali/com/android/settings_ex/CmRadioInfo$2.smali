.class Lcom/android/settings_ex/CmRadioInfo$2;
.super Ljava/lang/Object;
.source "CmRadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CmRadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CmRadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CmRadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CmRadioInfo;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/CmRadioInfo$2;->this$0:Lcom/android/settings_ex/CmRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    const-string/jumbo v1, "persist.radio.sw_mbn_volte"

    iget-object v0, p0, Lcom/android/settings_ex/CmRadioInfo$2;->this$0:Lcom/android/settings_ex/CmRadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/CmRadioInfo;->-wrap3(Lcom/android/settings_ex/CmRadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "persist.dbg.volte_avail_ovr"

    iget-object v0, p0, Lcom/android/settings_ex/CmRadioInfo$2;->this$0:Lcom/android/settings_ex/CmRadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/CmRadioInfo;->-wrap3(Lcom/android/settings_ex/CmRadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/CmRadioInfo$2;->this$0:Lcom/android/settings_ex/CmRadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/CmRadioInfo;->-wrap9(Lcom/android/settings_ex/CmRadioInfo;)V

    .line 114
    return-void

    .line 115
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0

    .line 116
    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_1
.end method