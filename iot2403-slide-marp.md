---
marp: true
theme: beamer
style: |
  .columns {
    display: grid;
    grid-template-columns: 1fr auto;
    gap: 1rem;
  }
  .columns2 {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
  .columns3 {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
  }


---

<!-- _class: title -->
# A Prototype Implementation of Computing Continuum Testbed using Public Cloud Container Service

<div style="margin:60pt"></div>

Yunzhi Dong Hidemoto Nakada  Yusuke Tanimura

Digital Architechture Research Center

National Institute of Advanced Industrial Science and Technology


---
# Background
### Number of IoT sensors explodes
- Simple device-cloud configuration is not feasible
- Device-edge-cloud configuration is required
- We are investigating in the area
  + MQTT is considered promissing.

### Problem
- It is not easy to setup testbed for such an environment
  + with 100+ - 1000+ sensors
- Real system was proposed as Grid5000, it is difficult to maintain.
- Simulators are mainly for network evaluation, not for software components.

---
# Goal and contribution

### Goal
- Proposes a method that leverages the public container service.
  - Amazon EKS: managed Kubernetes service
  - Full control of the setting up the environment from a jupyter notebook.



### Contribution
- Demonstrate the feasibility of the proposed method


---
# Slot-based Object Centric Representation-learning
<div class="columns">
<div class="columns-left">

- A video frame is decomposed into multiple 'slots'.
  - Each 'slot' captures one 'object'
  - 'slot' decomposition is done by masks
- The decoder reconstruct the image using the masks.

- Two axis of Information sharing
  - Slot-axis: to enforce one slot captures one object exclusively.
  - Time-axis: to enforce one slot tracks the same object

</div>
<div class="columns-right">
<div style="margin:60pt"></div>

  ![width:400](figs/slot-based-method.svg)

</div></div>





---
# Conclusion

## Summary
- Proposed a device-edge-cloud testbed on Amazon EKS
- Confirmed that it takes just a few seconds to setup the env.

## Future work
- Evaluation for larger environmnent.
- Add network emulation, such as latency injection, bandwidth capping.
